import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'home_view_state.g.dart';

@CopyWith(copyWithNull: true)
class HomeViewState extends ViewState {
  bool? isLoading;

  HomeViewState({this.isLoading}) : super();

  HomeViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
