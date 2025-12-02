import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/presentation/view_model/login/login_provider.dart';
import 'package:nutri_mind/presentation/view_model/login/login_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../foundation/assets/fonts.gen.dart';
import '../../../../foundation/theme/colors.dart';
import '../../../../application/injections/injector.dart';
import '../../../widgets/custom/common_textfield_with_title.dart';

@RoutePage()
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _emailController = TextEditingController();
  bool _emailValid = false;
  final _emailFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  void _validateEmail() {
    final email = _emailController.text.trim();
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    setState(() {
      _emailValid = emailRegex.hasMatch(email);
    });
  }

  bool get _isFormValid => _emailValid;

  void _sendOTP() {
    if (_isFormValid) {
      // TODO: Implement OTP sending logic
      print("Sending OTP to: ${_emailController.text}");
      // You can call your view model method here
      // viewModel.sendOTP(_emailController.text);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return LoginProvider(
      builder: (context, child) {
        final LoginViewModel viewModel = Provider.of<LoginViewModel>(
          context,
          listen: true,
        );
        final AppColors appColors = injector<AppColors>();

        return Scaffold(
          backgroundColor: appColors.bgGrey,
          body: Column(
            children: [
              _buildHeader(appColors),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonTextField(
                        title: "Email",
                        hintText: "Enter your email address",
                        controller: _emailController,
                        focusNode: _emailFocus,
                        isValid: _emailValid,
                      ),
                      const SizedBox(height: 40),
                      _buildOrDivider(),
                      const SizedBox(height: 30),
                      _buildSocialButtons(appColors),
                      const SizedBox(height: 40),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: _buildSendOTPButton(appColors),
                      ),
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

  Widget _buildHeader(AppColors colors) {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: colors.teal),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.chevron_left, size: 28),
                color: Colors.black,
              ),
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: FontFamily.inter,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.85),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              "Let's get you back into your account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildOrDivider() {
    return const Center(
      child: Text(
        "OR",
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF2ECC71),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSocialButtons(AppColors appColors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialLoginButton(Assets.images.icnGoogle.path, () {
          // TODO: Implement Google sign in for password reset
          print("Google sign in tapped");
        }),
        const SizedBox(width: 28),
        _socialLoginButton(Assets.images.icnApple.path, () {
          // TODO: Implement Apple sign in for password reset
          print("Apple sign in tapped");
        }),
      ],
    );
  }

  Widget _socialLoginButton(String image, VoidCallback onTapSocialButton) {
    return GestureDetector(
      onTap: onTapSocialButton,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.black,
        child: Image.asset(image),
      ),
    );
  }

  Widget _buildSendOTPButton(AppColors colors) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isFormValid ? _sendOTP : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isFormValid
              ? colors.teal
              : Colors.grey.shade700,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          "Send OTP",
          style: TextStyle(
            fontSize: 18,
            fontFamily: FontFamily.inter,
            fontWeight: FontWeight.w600,
            color: _isFormValid ? Colors.white : Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}