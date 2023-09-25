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
    double progress = 3 / 3;
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
              const Column(
                children: [

                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    decoration: InputDecoration(
                      hintText: '1 2 3 4',
                      hintStyle: TextStyle(
                        letterSpacing: 24.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ), ),),
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
                    trackHeight: 10.0,
                  ),
                  child: Slider(
                    value: progress,
                    onChanged: (value) {

                    },
                    activeColor: const Color(0xFF363d80),
                    inactiveColor: const Color(0xFFF0F0F0),
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
