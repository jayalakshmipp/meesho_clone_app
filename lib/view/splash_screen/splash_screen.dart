import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'dart:async';
import 'package:meesho_clone_app/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Define the scale animation
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    // Define the fade animation
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    // Start the animation after 1 second
    Timer(const Duration(seconds: 1), () {
      _controller.forward();
    });

    // Navigate to the next screen after 4 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.secondaryColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Logo stays stationary
            Image.asset(
              MImages.MLogo_PNG,
              width: 100, // Standard size for the logo
              height: 100,
            ),
            // Title with scale and fade-in animation
            ScaleTransition(
              scale: _scaleAnimation,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Padding(
                  padding: EdgeInsets.only(top: 50), // Reduced distance from the logo
                  child: Image.asset(
                    MImages.Meesho_White_Logo_PNG,
                    width: 80, // Smaller size for the title image
                    height: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
