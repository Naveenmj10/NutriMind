import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'splash_view_state.g.dart';

@CopyWith(copyWithNull: true)
class SplashViewState extends ViewState {
  bool? isLoading;

  SplashViewState({this.isLoading}) : super();

  SplashViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
