import 'package:flutter/material.dart';
import 'package:online_medicine_apps/theme.dart';
import 'package:online_medicine_apps/widget/button_primary.dart';
import 'package:online_medicine_apps/widget/general_logo_space.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const GeneralLogoSpace(),
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'register'.toUpperCase(),
                  style: regularTextStyle.copyWith(fontSize: 25),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Register new your account',
                  style: regularTextStyle.copyWith(
                    fontSize: 15,
                    color: greyLightColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                      color: whiteColor),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full Name',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: greyLightColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                      color: whiteColor),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: greyLightColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                      color: whiteColor),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: greyLightColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                      color: whiteColor),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Home Address',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: greyLightColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                      color: whiteColor),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: showHide,
                        icon: _secureText
                            ? const Icon(
                                Icons.visibility_off,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility,
                                size: 20,
                              ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: greyLightColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => RegisterScreen(),
                      //   ),
                      // );
                    },
                    child: Text(
                      'register'.toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: lightTextStyle.copyWith(
                          color: greyLightColor, fontSize: 15),
                    ),
                    Text(
                      'Login now',
                      style: lightTextStyle.copyWith(
                          color: greenColor, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
