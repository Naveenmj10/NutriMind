import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:nutri_mind/foundation/theme/colors.dart';
import 'package:nutri_mind/presentation/view_model/dashboard/health_dashboard_provider.dart';
import 'package:nutri_mind/presentation/view_model/dashboard/health_dashboard_view_model.dart';
import 'package:pinput/pinput.dart';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../foundation/assets/assets.gen.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../widgets/custom/common_widget.dart';

@RoutePage()
class TrainerRegistrationScreen extends StatefulWidget {
  const TrainerRegistrationScreen({super.key});

  @override
  State<TrainerRegistrationScreen> createState() => _TrainerRegistrationScreenState();
}

class _TrainerRegistrationScreenState extends State<TrainerRegistrationScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  int currentStep = 0;
  final PageController _pageCtrl = PageController();
  String selectedOffer = "Diets";

  double capacityValue = 1;
  String capacityLabel = "Medium";

  bool aiEnabled = false;
  AppColors appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    // final vm = Provider.of<AuthViewModel>(context);
    return HealthDashboardProvider(
      builder: (context, child) {
        final HealthDashboardViewModel viewModel = Provider.of<HealthDashboardViewModel>(
          context,
          listen: true,
        );

        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("NutriMind", style: TextStyle(color: appColors.primaryWhite, fontSize: 14, fontWeight: FontWeight.w700)),
                      Row(
                        children: [
                          topBarButton("Login/SignUp", bg: appColors.black, fg: appColors.primaryWhite),
                          SizedBox(width: 8),
                          topBarButton("Join as Trainer", bg: Color(0xff25AB75), fg: appColors.primaryWhite),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Container(
                    width: double.infinity,
                    // padding: const EdgeInsets.symmetric(),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(17.7),
                      border: Border.all(color:appColors.primaryWhite, width: 0.75)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(15),
                          ),
                          child: Assets.images.welcome.image(
                            width: 71,
                            height: 153,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric( horizontal: 12),
                                child: Column(
                                  children: [
                                    Text(
                                      "Welcome Back !",
                                      style: TextStyle(
                                        color: appColors.primaryWhite,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3,
                                        fontFamily: FontFamily.inter
                                      ),
                                    ),
                               SizedBox(height: 8),
                              Text(
                                "Please sign in to enjoy the stress-free\n                "
                                    "and tension free life!",
                                style: TextStyle(
                                  color: appColors.primaryWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),

                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "New to AI? Create A new account",
                                    style: TextStyle(
                                      color: appColors.primaryWhite.withOpacity(0.85),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),

                              const SizedBox(height: 8),

                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.75),
                                  border: Border.all(color: appColors.primaryWhite, width: 1),
                                ),
                                child:  Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: appColors.primaryWhite,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  /// Trainer Registration box
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   image: Assets.images.trainerRegister.provider(),
                      //   fit: BoxFit.cover,
                      // ),
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black.withOpacity(0.85), // overlay
                    ),
                    child: Column(
                      children: [

                        Text("Trainer Registration",
                            style: TextStyle(
                                color: appColors.primaryWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 16),

                        Row(
                          children: [
                            _stepItem(1, currentStep == 0, "Account"),
                            _line(),
                            _stepItem(2, currentStep == 1, "Profile"),
                            _line(),
                            _stepItem(3, currentStep == 2, "Services"),
                          ],
                        ),

                        SizedBox(height: 18),
                        SizedBox(
                          height: 630,
                          child: PageView(
                            controller: _pageCtrl,
                            physics: BouncingScrollPhysics(),
                            onPageChanged: (i) {
                              setState(() => currentStep = i);
                            },
                            children: [
                              _accountPage(),
                              _profilePage(),
                              _servicesPage(viewModel),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Widget _stepItem(int number, bool active, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            // padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: active ?  appColors.activeColor : Colors.grey.shade700,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              number.toString(),
              style: TextStyle(
                color:appColors.primaryWhite,
                fontWeight: FontWeight.w700,
                fontSize: 7.8,
              ),
            ),
          ),

          const SizedBox(height: 4),
          Text(
            label,
            style:  TextStyle(
              color: appColors.primaryWhite,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _line({bool isRow = false}) {
    return Container(
      width: isRow ? 109.5 : 46,
      height: 1,
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: appColors.primaryWhite,
    );
  }

  Widget _borderedField({required TextEditingController controller, required String hint, IconData? icon, bool isPassword = false}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: TextStyle(color: appColors.primaryWhite, fontSize: 14),
      decoration: darkInputDecoration(hint: hint, prefix: icon != null ? Icon(icon, color: appColors.primaryWhite) : null),
    );
  }

  Widget _phoneRow() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: appColors.primaryWhite), borderRadius: BorderRadius.circular(4)),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appColors.black
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Text("IN", style: TextStyle(color: appColors.activeColor, fontSize: 16, fontWeight: FontWeight.w400)),
                Icon(Icons.arrow_drop_down, color:appColors.activeColor),
              ],
            ),
          ),
           VerticalDivider(color: appColors.primaryWhite, width: 2),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: appColors.primaryWhite, fontSize: 14),
              decoration:  InputDecoration(border: InputBorder.none, hintText: "Phone Number", hintStyle: TextStyle(color:appColors.hintColor,),
                filled: true,
                fillColor: appColors.black
              ),
            ),
          ),
        ],
      ),
    );
  }

  //// account page for
  Widget _accountPage() {
    return Column(
      children: [
        // Input fields
        _borderedField(controller: _name, hint: "Full Name", icon: Icons.person_2_outlined),
        SizedBox(height: 12),

        _borderedField(controller: _email, hint: "Email ID", icon: Icons.email_outlined),
        SizedBox(height: 12),

        _phoneRow(),
        SizedBox(height: 12),

        _borderedField(controller: _password, hint: "Password", icon: Icons.lock_outline, isPassword: true),
        SizedBox(height: 12),

        Pinput(
          length: 5,
          controller: otpController,
          defaultPinTheme: PinTheme(
            width: 56,
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(color: appColors.primaryWhite),
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          focusedPinTheme: PinTheme(
            width: 56,
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF20C48A), width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          submittedPinTheme: PinTheme(
            width: 56,
            height: 48,
            decoration: BoxDecoration(
              color: appColors.primaryWhite,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: appColors.primaryWhite,),
            ),
            textStyle: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          followingPinTheme: PinTheme(
            width: 56,
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(color: appColors.primaryWhite),
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 18,
            ),
          ),
          separatorBuilder: (index) => SizedBox(width: 10),
          onCompleted: (pin) {
            print("OTP entered: $pin");
          },
        ),

        SizedBox(height: 12),

        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot password?",
            style: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 16),

        // Continue button
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (currentStep < 2) {
                setState(() => currentStep++);
                _pageCtrl.animateToPage(
                  currentStep,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 14),
              backgroundColor: const Color(0xFF20C48A),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Continue",
                    style: TextStyle(
                        color: appColors.primaryWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: appColors.primaryWhite,),
              ],
            ),
          ),
        ),

        SizedBox(height: 28),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _line(isRow: true),
            Text("or",
                style: TextStyle(
                    color: appColors.primaryWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w900)),
            _line(isRow: true),
          ],
        ),

        SizedBox(height: 40),

        Row(
          children: [
            Expanded(
              child: socialButton(
                "Google",
                iconPath: "assets/images/google_icon.png",
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: socialButton(
                "Facebook",
                iconPath: "assets/images/apple_icon.png",
              ),
            ),
          ],
        ),

      ],
    );
  }

  /// for profile page
  Widget _profilePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Attachment",
            style: TextStyle(
              color: appColors.primaryWhite,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.inter
            ),
          ),
        ),
        SizedBox(height: 8),

        Container(
          width: double.infinity,
          height: 80,
          // padding: EdgeInsets.symmetric(vertical: 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xff232220),
            border: Border.all(
              color: appColors.primaryWhite,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            children: [
              Icon(Icons.file_upload_outlined, color: appColors.green, size: 28),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Drop here to attach or ",
                        style: TextStyle(color: appColors.darkGreyColor, fontSize: 12)),
                    TextSpan(
                        text: "upload",
                        style: TextStyle(
                            color: appColors.darkGreen,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Text("Max size: 5GB",
                  style: TextStyle(color: appColors.darkGreyColor, fontSize: 11)),
            ],
          ),
        ),

        SizedBox(height: 18),

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: appColors.black,
            border: Border.all(color: appColors.primaryWhite,),
          ),
          child: Row(
            children: [
              _chip("nutrition expert"),
              SizedBox(width: 6),
              _chip("Gym Trainer"),
              Spacer(),
              Icon(Icons.arrow_drop_down, color: appColors.primaryWhite, size: 30),
            ],
          ),
        ),

        SizedBox(height: 12),
        _blackDropdown("Experience"),

        SizedBox(height: 12),
        _blackDropdown("City"),

        SizedBox(height: 12),

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: appColors.black,
            border: Border.all(color: appColors.primaryWhite,)
          ),
          child: Row(
            children: [
              _chip("English"),
              SizedBox(width: 6),
              _chip("Hindi"),
              SizedBox(width: 6),
              _smallChip("+2"),
              Spacer(),
              Icon(Icons.arrow_drop_down, color: appColors.primaryWhite, size: 30),
            ],
          ),
        ),

        SizedBox(height: 12),

        Container(
          height: 67,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: appColors.primaryWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLines: null,
              style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Tell us a bit about yourself",
              hintStyle: TextStyle(color: appColors.hintStyle1, fontSize: 12),
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)
            ),
          ),
        ),

        SizedBox(height: 6),

        Text(
          "120 Characters min *",
          style: TextStyle(color:appColors.textColor, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: FontFamily.inter),
        ),

        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                currentStep = 2;
              });
              _pageCtrl.animateToPage(
                2,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF20C48A),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Continue",
                  style: TextStyle(
                      color: appColors.primaryWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: appColors.primaryWhite,),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _chip(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFFE7F7F1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xff25AB75),
          width: 1
        )
      ),
      child: Row(
        children: [
          Container(child: Icon(Icons.close, color: appColors.primaryWhite, size: 15),
          decoration: BoxDecoration(
            color: Color(0xff25AB75),
            borderRadius: BorderRadius.circular(40)
          ),),
          SizedBox(width: 4),
          Text(text,
              style: TextStyle(
                  color: Color(0xff25AB75), fontSize: 12, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _smallChip(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFF20C48A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text,
          style: TextStyle(
              color: appColors.primaryWhite, fontSize: 12, fontWeight: FontWeight.w600)),
    );
  }

  Widget _blackDropdown(String hint) {
    return Container(
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appColors.primaryWhite,),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(hint,
              style: TextStyle(color: Color(0xffA9A7A7), fontSize: 14)),
          Icon(Icons.arrow_drop_down, color: appColors.primaryWhite, size: 30),
        ],
      ),
    );
  }


  /// for service page
  Widget _servicesPage(HealthDashboardViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),

        Text(
          "What do you offer?",
          style: TextStyle(
            color: appColors.primaryWhite,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.inter
          ),
        ),
        SizedBox(height: 12),

        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: appColors.primaryWhite,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              _offerToggle("Diets", selectedOffer == "Diets", () {
                setState(() => selectedOffer = "Diets");
              }),
              SizedBox(width: 10),
              _offerToggle("Workout", selectedOffer == "Workout", () {
                setState(() => selectedOffer = "Workout");
              }),
              SizedBox(width: 10),
              _offerToggle("Both", selectedOffer == "Both", () {
                setState(() => selectedOffer = "Both");
              }),
            ],
          ),
        ),

        SizedBox(height: 25),

        Text(
          "Trainee capacity",
          style: TextStyle(
            color: appColors.primaryWhite,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.inter
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xFF20C48A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              capacityLabel, // Small, Medium, High
              style: TextStyle(color: appColors.primaryWhite, fontSize: 12),
            ),
          ),
        ),


        Slider(
          value: capacityValue,
          min: 0,
          max: 2,
          divisions: 2,
          activeColor: Color(0xFF20C48A),
          inactiveColor: appColors.primaryWhite,
          onChanged: (value) {
            setState(() {
              capacityValue = value;
              if (value == 0) capacityLabel = "Small";
              if (value == 1) capacityLabel = "Medium";
              if (value == 2) capacityLabel = "High";
            });
          },
        ),

        SizedBox(height: 20),
        Stack(
          clipBehavior: Clip.none,
          children: [

            //// MAIN CARD
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: appColors.primaryWhite, width: 1.5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Empty space for overlapped image
                  SizedBox(width: 60),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "AI Assistance",
                          style: TextStyle(
                            color: Color(0xff25AB75),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Enable AI to help\n manage your plans.",
                            style: TextStyle(
                              color: appColors.primaryWhite,
                              fontSize: 13,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                      color: appColors.primaryWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              left: -4,
              top: -20,
              child: SizedBox(
                width: 100,
                height: 120,
                child: Image.asset(
                  "assets/images/ai_image.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 28),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              viewModel.handleNavigationToHealthDashboardScreen();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF20C48A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Submit",
                  style: TextStyle(
                      color: appColors.primaryWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.inter
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: appColors.primaryWhite,),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _offerToggle(String title, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          // height: 45,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? appColors.darkGreen : appColors.primaryWhite,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? appColors.primaryWhite : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }


}

