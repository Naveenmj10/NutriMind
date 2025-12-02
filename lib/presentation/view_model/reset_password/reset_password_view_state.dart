import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'reset_password_view_state.g.dart';

@CopyWith(copyWithNull: true)
class ResetPasswordViewState extends ViewState {
  bool? isLoading;

  ResetPasswordViewState({this.isLoading}) : super();

  ResetPasswordViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
