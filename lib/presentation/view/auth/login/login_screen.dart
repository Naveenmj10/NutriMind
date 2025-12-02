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
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _emailValid = false;
  bool _passwordValid = false;

  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();

    _emailController.addListener(_validateEmail);
    _passwordController.addListener(_validatePassword);
  }

  void _validateEmail() {
    final email = _emailController.text.trim();
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    setState(() {
      _emailValid = emailRegex.hasMatch(email);
    });
  }

  void _validatePassword() {
    setState(() {
      _passwordValid = _passwordController.text.trim().length >= 8;
    });
  }

  bool get _isFormValid => _emailValid && _passwordValid;

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

                      const SizedBox(height: 22),

                      CommonTextField(
                        title: "Password",
                        hintText: "Enter your password",
                        controller: _passwordController,
                        focusNode: _passwordFocus,
                        isValid: _passwordValid,
                        isPassword: true,
                        obscureText: _obscurePassword,
                        onToggleVisibility: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),

                      const SizedBox(height: 30),

                      _buildForgetPasswordRedirect(() {}, appColors),

                      const SizedBox(height: 30),

                      _buildTerms(),

                      const SizedBox(height: 30),

                      _buildOrDivider(),

                      const SizedBox(height: 30),

                      _buildSocialButtons(appColors),

                      const SizedBox(height: 40),

                      _buildCreateAccountButton(appColors),

                      const SizedBox(height: 20),

                      _buildCreateAccountRedirect(() {
                        viewModel.handleNavigationToCreateAccountScreen();
                      }, appColors),
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
                "Login to your account",
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
              "It’s great to see you again.",
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

  Widget _buildTerms() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.white70, fontSize: 14),
        children: [
          TextSpan(
            text: "By signing up you agree to our ",
            style: TextStyle(
              fontFamily: FontFamily.inter,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          TextSpan(text: "Terms", style: _linkStyle()),
          const TextSpan(text: ", "),
          TextSpan(text: "Privacy Policy", style: _linkStyle()),
          const TextSpan(
            text: ", and ",
            style: TextStyle(
              fontFamily: FontFamily.inter,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          TextSpan(text: "Cookie Use", style: _linkStyle()),
        ],
      ),
    );
  }

  TextStyle _linkStyle() => const TextStyle(
    color: Colors.white,
    fontFamily: FontFamily.inter,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

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
        _socialLoginButton(Assets.images.icnGoogle.path, () {}),
        const SizedBox(width: 28),
        _socialLoginButton(Assets.images.icnApple.path, () {}),
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

  Widget _buildCreateAccountButton(AppColors colors) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isFormValid ? () {} : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isFormValid
              ? const Color(0xFFB9EDC8)
              : Colors.grey.shade800,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        child: Text(
          "Create an Account",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: _isFormValid ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildForgetPasswordRedirect(
    VoidCallback onTapForgetPassword,
    AppColors appColors,
  ) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.white60, fontSize: 16),
        children: [
          TextSpan(
            text: "Forgot your password?",
            style: TextStyle(
              fontFamily: FontFamily.inter,
              fontSize: 15,
              color: appColors.teal,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: " Reset your password",
            style: TextStyle(
              color: appColors.teal,
              fontFamily: FontFamily.inter,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapForgetPassword,
          ),
        ],
      ),
    );
  }

  Widget _buildCreateAccountRedirect(
    VoidCallback onCreateAccountTap,
    AppColors appColors,
  ) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.white60, fontSize: 16),
          children: [
            TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(
                fontFamily: FontFamily.inter,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "Create",
              style: TextStyle(
                color: appColors.teal,
                fontFamily: FontFamily.inter,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()..onTap = onCreateAccountTap,
            ),
          ],
        ),
      ),
    );
  }
}
