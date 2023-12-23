import 'package:flutter/material.dart';
import 'package:online_medicine_apps/screen/register_screen.dart';
import 'package:online_medicine_apps/widget/button_primary.dart';
import 'package:online_medicine_apps/widget/general_logo_space.dart';

import '../theme.dart';
import '../widget/widget_ilustration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralLogoSpace(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            WidgetIlustration(
              image: 'assets/splash_ilustration.png',
              title: 'Find Your Medical',
              subtitle1: 'Consult with a Doctor',
              subtitle2: 'Whereever and whenever you want',
            ),
            // ButtonPrimary(
            //   text: 'get started',
            //   onTap: () {},
            // )
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  'get started'.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
