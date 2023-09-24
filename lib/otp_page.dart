import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:pintextfield/pintextfield.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'consumerpage.dart';
class OtpPage extends StatelessWidget {
  const OtpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double progress = 3 / 3; // 33% progress
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Card(
                elevation: 3.0,
                child: Image(
                  height: 80.0,
                  width: double.infinity,
                  image: AssetImage('images/logo.png'),
                ),
                // Your main content here
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Sign Up',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xFF14304A),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
                'Verify OTP',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xFF14304A),
                    fontWeight: FontWeight.w600,
                    fontSize: 28.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Please Enter The Code',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  // getting the code data from a dart plugin over here
                  // code available on the plugin site as an information of how to use it
                  PinTextField(
                    number: 4,
                    onComplete: (code) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Completed code is $code')),
                      );
                    },
                    validator: (value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Do not leave any codes missing!'),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
                'Didn\'t receive code?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Resend Code',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF41C485),
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Text(
                '3 of 3',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF41C485),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(
                  width: 316.1,
                  onPressed: () => Navigator.of(context).push(
                    PageTransition(
                      child: const ConsumerPage(),
                      type: PageTransitionType.leftToRight,
                    ),
                  ),
                  backgroundColor: Color(0xFF363d80),
                  isThreeD: true,
                  height: 56,
                  borderRadius: 32,
                  shadowColor: Colors.black,
                  animate: true,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    'Next',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
