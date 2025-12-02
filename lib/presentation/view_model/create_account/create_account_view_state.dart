import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
part 'create_account_view_state.g.dart';

@CopyWith(copyWithNull: true)
class CreateAccountViewState extends ViewState {
  bool? isLoading;

  CreateAccountViewState({this.isLoading}) : super();

  CreateAccountViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
