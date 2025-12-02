import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'change_password_view_state.g.dart';

@CopyWith(copyWithNull: true)
class ChangePasswordViewState extends ViewState {
  bool? isLoading;

  ChangePasswordViewState({this.isLoading}) : super();

  ChangePasswordViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
