import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/stepzerotwo.dart';
import 'package:page_transition/page_transition.dart';



class Stepzerone extends StatelessWidget {
  const Stepzerone({super.key});

  @override
  Widget build(BuildContext context) {
    double progress = 1 / 3; // 33% progress

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
                      'What\'s your email?',
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
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      color: Color(0xFFC4C4C4),
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Enter email address',
                      border: InputBorder.none, // Remove borders
                    ),
                    // Add any additional logic you need for email validation
                  ),
                ),
                const SizedBox(
                  height: 100.0, // Add spacing
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Step 1 of 3',
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
                          trackHeight: 10.0, // Adjust the height as needed
                        ),
                        child: Slider(
                          value: progress,
                          onChanged: (value) {
                            // Handle slider value change
                          },
                          activeColor: const Color(0xFF363d80), // Color of the filled part
                          inactiveColor: const Color(0xFFF0F0F0), // Color of the unfilled part
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0, // Add more spacing if needed
                ),
                CustomButton(
                  onPressed: () => Navigator.of(context).push(
                    PageTransition(
                      child: const Stepzerotwo(),
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