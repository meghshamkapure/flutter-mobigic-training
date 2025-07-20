import 'package:codex_login/constants/app_color_constants.dart';
import 'package:codex_login/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    ); // controls the visibility and behavior of the system UI overlays, like status bar & navigation bar

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, AppRoutes.homeScreenRoute);
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        //stretch to the full width of its parent widget
        height: double.infinity,
        //stretch to the full height of its parent widget
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.blue, AppColors.teal],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.05, 0.5],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mobigic",
              style: GoogleFonts.actor(
                textStyle: const TextStyle(
                  fontSize: 60,
                  color: AppColors.yellow,
                  fontWeight: FontWeight.bold,
                  decorationThickness: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
