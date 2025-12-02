import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
part 'verify_otp_view_state.g.dart';

@CopyWith(copyWithNull: true)
class VerifyOtpViewState extends ViewState {
  bool? isLoading;

  VerifyOtpViewState({this.isLoading}) : super();

  VerifyOtpViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
