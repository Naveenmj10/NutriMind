import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
part 'scan_view_state.g.dart';

@CopyWith(copyWithNull: true)
class ScanViewState extends ViewState {
  bool? isLoading;

  ScanViewState({this.isLoading}) : super();

  ScanViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
