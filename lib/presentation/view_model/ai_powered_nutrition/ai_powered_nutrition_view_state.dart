import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';


part 'ai_powered_nutrition_view_state.g.dart';

@CopyWith(copyWithNull: true)
class AiPoweredNutritionViewState extends ViewState {
  bool? isLoading;

  AiPoweredNutritionViewState({this.isLoading}) : super();

  AiPoweredNutritionViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
