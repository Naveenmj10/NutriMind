import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
part 'generated_diet_view_state.g.dart';


@CopyWith(copyWithNull: true)
class GeneratedDietViewState extends ViewState {
  bool? isLoading;

  GeneratedDietViewState({this.isLoading}) : super();

  GeneratedDietViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
