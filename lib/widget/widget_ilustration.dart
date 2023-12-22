import 'package:flutter/material.dart';
import 'package:online_medicine_apps/theme.dart';

class WidgetIlustration extends StatelessWidget {
  WidgetIlustration({
    super.key,
    this.child,
    this.image,
    this.title,
    this.subtitle1,
    this.subtitle2,
  });

  final Widget? child;
  final String? image;
  final String? title;
  final String? subtitle1;
  final String? subtitle2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image!,
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title!,
          style: regularTextStyle.copyWith(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Text(
              subtitle1!,
              style: regularTextStyle.copyWith(
                fontSize: 15,
                color: greyLightColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subtitle2!,
              style: regularTextStyle.copyWith(
                fontSize: 15,
                color: greyLightColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        )
      ],
    );
  }
}
