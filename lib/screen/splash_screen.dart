import 'package:flutter/material.dart';
import 'package:online_medicine_apps/widget/button_primary.dart';
import 'package:online_medicine_apps/widget/general_logo_space.dart';

import '../widget/widget_ilustration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralLogoSpace(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            WidgetIlustration(
              image: 'assets/splash_ilustration.png',
              title: 'Find Your Medical',
              subtitle1: 'Consult with a Doctor',
              subtitle2: 'Whereever and whenever you want',
              child: ButtonPrimary(
                text: 'get started',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
