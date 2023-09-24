import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:hackathon/stepzerone.dart';
import 'horizontal_line.dart';
import 'package:page_transition/page_transition.dart';

import 'otp_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late String countryValue;
  late String stateValue;
  late String cityValue;

  Widget buildLogoImage(String assetPath) {
    return Container(
      width: 72.0, // Width of the circular logo
      height: 72.0, // Height of the circular logo
      margin: const EdgeInsets.all(8.0), // Adjust the margin as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Circular shape
        image: DecorationImage(
          image: AssetImage(assetPath), // Asset path to your logo image
          fit: BoxFit.cover, // Cover the entire circle
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Fill Your Information Below',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF747474),
                    fontSize: 12.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    labelText: 'Enter Your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    labelText: 'Enter Your PhoneNumber',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              SelectState(
                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },
                onStateChanged: (value) {
                  setState(() {
                    stateValue = value;
                  });
                },
                onCityChanged: (value) {
                  setState(() {
                    cityValue = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(
                  width: 316.1,
                  onPressed: () => Navigator.of(context).push(
                    PageTransition(
                      child: const Stepzerone(),
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
                    'Send OTP',
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
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: HorizontalLine(text: 'OR SIGN IN USING?'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildLogoImage('images/apple.png'),
                  buildLogoImage('images/google_logo.png'),
                  buildLogoImage('images/facebooklogo.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
