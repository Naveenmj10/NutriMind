import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'diet_planner_view_state.g.dart';

@CopyWith(copyWithNull: true)
class DietPlannerViewState extends ViewState {
  bool? isLoading;

  DietPlannerViewState({this.isLoading}) : super();

  DietPlannerViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
