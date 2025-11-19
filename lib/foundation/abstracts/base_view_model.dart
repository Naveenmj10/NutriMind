import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///View-Model base class
abstract class ViewModel<T, S extends ViewState> extends ChangeNotifier
    implements ValueListenable<S> {
  bool _isDisposed = false;

  S _state;

  ViewModel(this._state);

  @override
  S get value => _state;

  @nonVirtual
  S get state => _state;

  @override
  @mustCallSuper
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  @override
  @mustCallSuper
  void notifyListeners() {
    if (_isDisposed) return;
    super.notifyListeners();
  }

  @protected
  @mustCallSuper
  void setState(S newState) {
    if (newState == _state) return;
    _state = newState;
    notifyListeners();
  }

  static T read<T>(BuildContext context) {
    return Provider.of<T>(context, listen: false);
  }

  static R select<T, R>(BuildContext context, R Function(T value) selector) {
    return context.select<T, R>(selector);
  }

  static T watch<T>(BuildContext context) {
    return Provider.of<T>(context, listen: true);
  }
}

abstract class ViewState with EquatableMixin {
  const ViewState();
}
