import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/presentation/view_model/change_password/change_password_provider.dart';
import 'package:nutri_mind/presentation/view_model/change_password/change_password_view_model.dart';
import 'package:nutri_mind/presentation/view_model/login/login_provider.dart';
import 'package:nutri_mind/presentation/view_model/login/login_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../foundation/assets/fonts.gen.dart';
import '../../../../foundation/theme/colors.dart';
import '../../../../application/injections/injector.dart';
import '../../../widgets/custom/common_textfield_with_title.dart';
import '../../../widgets/pop-ups/password_change_success_dialog.dart';

@RoutePage()
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _obscureNewPassword = true;
  bool _obscureReEnterPassword = true;

  final _newPasswordController = TextEditingController();
  final _reEnterPasswordController = TextEditingController();

  bool _newPasswordValid = false;
  bool _reEnterPasswordValid = false;

  final _newPasswordFocus = FocusNode();
  final _reEnterPasswordFocus = FocusNode();

  @override
  void initState() {
    super.initState();

    _newPasswordController.addListener(_validatePasswords);
    _reEnterPasswordController.addListener(_validatePasswords);
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _reEnterPasswordController.dispose();
    _newPasswordFocus.dispose();
    _reEnterPasswordFocus.dispose();
    super.dispose();
  }

  void _validatePasswords() {
    setState(() {
      _newPasswordValid = _newPasswordController.text.trim().length >= 8;
      _reEnterPasswordValid = _reEnterPasswordController.text.trim().length >= 8 &&
          _newPasswordController.text.trim() == _reEnterPasswordController.text.trim();
    });
  }

  bool get _isFormValid => _newPasswordValid && _reEnterPasswordValid;

  void _handleContinue() {
    if (_isFormValid) {
      // Show success dialog
      _showSuccessDialog();
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const PasswordChangeSuccessDialog(),
    );

  }

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return ChangePasswordProvider(
      builder: (context, child) {
        final ChangePasswordViewModel viewModel = Provider.of<ChangePasswordViewModel>(
          context,
          listen: true,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonTextField(
                        title: "New Password",
                        hintText: "Enter your password",
                        controller: _newPasswordController,
                        focusNode: _newPasswordFocus,
                        isValid: _newPasswordValid,
                        isPassword: true,
                        obscureText: _obscureNewPassword,
                        onToggleVisibility: () {
                          setState(() {
                            _obscureNewPassword = !_obscureNewPassword;
                          });
                        },
                      ),
                      const SizedBox(height: 30),
                      CommonTextField(
                        title: "Re-Enter Password",
                        hintText: "Re-enter your password",
                        controller: _reEnterPasswordController,
                        focusNode: _reEnterPasswordFocus,
                        isValid: _reEnterPasswordValid,
                        isPassword: true,
                        obscureText: _obscureReEnterPassword,
                        onToggleVisibility: () {
                          setState(() {
                            _obscureReEnterPassword = !_obscureReEnterPassword;
                          });
                        },
                      ),
                      const SizedBox(height: 40),
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

  Widget _buildHeader(AppColors colors) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 80,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: colors.teal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.chevron_left, size: 30),
                color: Colors.black,
              ),
              const SizedBox(width: 8),
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
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Set the new password for your account so\nyou can login and access all the features.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: FontFamily.inter,
                color: Colors.black.withOpacity(0.7),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContinueButton(AppColors colors) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isFormValid ? _handleContinue : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isFormValid
              ? const Color(0xFF2ECC71)
              : const Color(0xFF5A5A5A),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          "Continue",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: FontFamily.inter,
            color: _isFormValid ? Colors.white : const Color(0xFF8A8A8A),
          ),
        ),
      ),
    );
  }
}