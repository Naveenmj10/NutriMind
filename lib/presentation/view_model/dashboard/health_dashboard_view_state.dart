import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'health_dashboard_state.g.dart';

@CopyWith(copyWithNull: true)
class HealthDashboardViewState extends ViewState {
  bool? isLoading;

  HealthDashboardViewState({this.isLoading}) : super();

  HealthDashboardViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
