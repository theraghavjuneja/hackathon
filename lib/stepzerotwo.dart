import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/otp_page.dart';
import 'package:page_transition/page_transition.dart';



class Stepzerotwo extends StatelessWidget {
  const Stepzerotwo({super.key});

  @override
  Widget build(BuildContext context) {
    double progress = 2 / 3; // 66.66% progress

    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Card(
                  elevation: 2.0,
                  child: Image(
                    height: 80.0,
                    width: double.infinity,
                    image: AssetImage('images/logo.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF14304A),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Create a Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF14304A),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    obscureText: true, // Hide the password text
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      color: Color(0xFFC4C4C4),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility), // Eye icon
                        onPressed: () {
                          // Toggle password visibility
                        },
                      ),
                    ),
                    // Add any additional logic you need for password validation
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Step 2 of 3',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF14304A),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 15.0,
                      child: SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 10.0,
                        ),
                        child: Slider(
                          value: progress,
                          onChanged: (value) {
                            // Handle slider value change
                          },
                          activeColor: const Color(0xFF29BF12), // Green color for progress
                          inactiveColor: const Color(0xFFF0F0F0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  onPressed: () => Navigator.of(context).push(
                    PageTransition(
                      child: const OtpPage(),
                      type: PageTransitionType.leftToRight,
                    ),
                  ),
                  width: 316.1,
                  backgroundColor: const Color(0xFF14304A),
                  isThreeD: true,
                  shadowColor: Colors.black,
                  animate: true,
                  margin: const EdgeInsets.all(10.0),
                  height: 56,
                  borderRadius: 32,
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}