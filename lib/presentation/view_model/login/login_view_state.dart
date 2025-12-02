import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'login_view_state.g.dart';

@CopyWith(copyWithNull: true)
class LoginViewState extends ViewState {
  bool? isLoading;

  LoginViewState({this.isLoading}) : super();

  LoginViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
