import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/verify_otp/verify_otp_provider.dart';
import 'package:nutri_mind/presentation/view_model/verify_otp/verify_otp_view_model.dart';
import 'package:pinput/pinput.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import 'package:nutri_mind/foundation/theme/colors.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OTPVerificationScreen extends StatefulWidget {
  final String email;

  const OTPVerificationScreen({super.key, required this.email});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isComplete = false;

  // TIMER VARIABLES
  int _secondsRemaining = 30;
  Timer? _timer;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _startTimer() {
    _canResend = false;
    _secondsRemaining = 30;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        setState(() {
          _canResend = true;
        });
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  void _verifyOTP() {
    if (_isComplete) {
      print("Verifying OTP: ${_pinController.text}");
    }
  }

  void _resendCode() {
    if (!_canResend) return;

    print("Resending OTP to: ${widget.email}");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('OTP resent to ${widget.email}'),
        backgroundColor: const Color(0xFF2ECC71),
      ),
    );

    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    final defaultPinTheme = PinTheme(
      width: 70,
      height: 70,
      textStyle: TextStyle(
        fontSize: 32,
        fontFamily: FontFamily.inter,
        fontWeight: FontWeight.w600,
        color: appColors.lightBlue,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return VerifyOtpProvider(
      builder: (context, child) {
        final VerifyOtpViewModel viewModel = Provider.of<VerifyOtpViewModel>(
          context,
        );

        return Scaffold(
          backgroundColor: appColors.bgGrey,
          body: Column(
            children: [
              _buildHeader(appColors),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),

                      // OTP INPUT
                      Pinput(
                        controller: _pinController,
                        focusNode: _focusNode,
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: const Color(0xFF2ECC71),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onCompleted: (pin) {
                          setState(() => _isComplete = true);
                        },
                        onChanged: (value) {
                          setState(() => _isComplete = value.length == 4);
                        },
                        keyboardType: TextInputType.number,
                      ),

                      const SizedBox(height: 20),

                      // RESEND WITH TIMER
                      _buildResendCodeLink(),

                      const SizedBox(height: 30),

                      _buildContinueButton(appColors),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ------------------ HEADER ------------------
  Widget _buildHeader(AppColors colors) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 3, top: 10),
      decoration: BoxDecoration(color: colors.teal),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.chevron_left, size: 28),
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    "Enter 4 Digit Code",
                    style: TextStyle(
                      fontSize: 34,
                      fontFamily: FontFamily.inter,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.85),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 16),
              child: Text(
                "Enter the 4-digit code sent to ${widget.email}",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: FontFamily.inter,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ------------------ RESEND CODE ------------------
  Widget _buildResendCodeLink() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 16,
          fontFamily: FontFamily.inter,
          color: Colors.white.withOpacity(0.7),
        ),
        children: [
          // Always visible text
          const TextSpan(text: "Email not received? "),

          // If waiting → show countdown
          if (!_canResend)
            TextSpan(
              text: "resend code in $_secondsRemaining sec",
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),

          // If available → show clickable Resend Code
          if (_canResend)
            TextSpan(
              text: "Resend Code",
              style: const TextStyle(
                color: Color(0xFF2ECC71),
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF2ECC71),
              ),
              recognizer: TapGestureRecognizer()..onTap = _resendCode,
            ),
        ],
      ),
    );
  }

  // ------------------ CONTINUE BUTTON ------------------
  Widget _buildContinueButton(AppColors colors) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isComplete ? _verifyOTP : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isComplete
              ? const Color(0xFF2ECC71)
              : Colors.grey.shade700,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          "Continue",
          style: TextStyle(
            fontSize: 18,
            fontFamily: FontFamily.inter,
            fontWeight: FontWeight.w600,
            color: _isComplete ? Colors.white : Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
