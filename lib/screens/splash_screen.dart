import 'package:flutter/material.dart';
import 'package:flutter_assignment_6_property_app/constants/theme_data.dart';
import 'package:flutter_assignment_6_property_app/routes/route_path.dart';
import 'package:icons_plus/icons_plus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Navigator.popAndPushNamed(context, RoutePath.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesome.heart_pulse_solid,
          size: 100,
          color: ThemeColors.getThemeColors(context).primaryVariantColor,
        ),
      ),
    );
  }
}
