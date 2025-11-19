import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/splash/splash_provider.dart';
import '../../view_model/splash/splash_view_model.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _textController;
  late AnimationController _underlineController;
  late AnimationController _glowController;

  late Animation<Offset> _textSlideAnimation;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _underlineAnimation;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();

    // Text slide and fade controller
    _textController = AnimationController(
      duration: const Duration(milliseconds: 1800),
      vsync: this,
    );

    // Underline animation controller
    _underlineController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    // Glow/pulse animation controller
    _glowController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: true);

    // Text slide from bottom
    _textSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(parent: _textController, curve: Curves.easeOut),
        );

    // Text opacity
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _textController, curve: Curves.easeIn),
    );

    // Underline width animation
    _underlineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _underlineController, curve: Curves.easeInOut),
    );

    // Glow pulse effect
    _glowAnimation = Tween<double>(begin: 0.3, end: 0.8).animate(
      CurvedAnimation(parent: _glowController, curve: Curves.easeInOut),
    );

    // Start animations with staggered timing
    _textController.forward();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        _underlineController.forward();
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _underlineController.dispose();
    _glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SplashProvider(builder: (context, child) {
      final SplashViewModel viewModel =
      Provider.of<SplashViewModel>(context, listen: true);

      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main animated content
              SlideTransition(
                position: _textSlideAnimation,
                child: FadeTransition(
                  opacity: _textOpacityAnimation,
                  child: Column(
                    children: [
                      // Animated glow effect behind text
                      AnimatedBuilder(
                        animation: _glowAnimation,
                        builder: (context, child) {
                          return Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.teal.withValues(
                                    alpha: _glowAnimation.value * 0.4,
                                  ),
                                  blurRadius: 40,
                                  spreadRadius: 20,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 40),
                      // NutriMind Text
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.teal.shade300,
                              Colors.white,
                            ],
                            stops: const [0.0, 0.5, 1.0],
                          ).createShader(bounds);
                        },
                        child: Text(
                          "NutriMind",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            fontSize: 56,
                            color: Colors.white,
                            letterSpacing: 2.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Animated underline
                      AnimatedBuilder(
                        animation: _underlineAnimation,
                        builder: (context, child) {
                          return Container(
                            height: 2,
                            width: 80 * _underlineAnimation.value,
                            decoration: BoxDecoration(
                              color: Colors.teal.shade400,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.teal.withValues(alpha: 0.5),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 28),
                      // Subtitle with staggered fade
                      FadeTransition(
                        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                            parent: _textController,
                            curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
                          ),
                        ),
                        child: Text(
                          "Nutrition Intelligence",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.white.withValues(alpha: 0.6),
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
