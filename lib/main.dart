import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/SecondPage.dart';
import 'package:hackathon/profile.dart';
import 'package:page_transition/page_transition.dart';
import 'categories.dart';
import 'consumerpage.dart';
import 'my_orders.dart';
import 'nearby_sellers.dart';
import 'password_toggle.dart';
import 'horizontal_line.dart';
import 'package:hackathon/OvalLoginButton.dart';

void main() {
  runApp(const MSMEMart());
}

class MSMEMart extends StatelessWidget {
  const MSMEMart({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'lib/consumerpage.dart': (context) => const ConsumerPage(),
        'lib/categories.dart': (context) => CategoriesScreen(),
        'lib/my_orders.dart':(context)=>  MyOrdersScreen() ,
        'lib/nearby_sellers.dart':(context)=>NearbySellersScreen(),
        'lib/profile.dart':(context)=>const ProfileScreen(),



      },
      home: const SafeArea(child: LoginPage()),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome!!',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email Address',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF14304A),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email address',
                  labelStyle: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF14304A),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  suffixIcon: PasswordToggle(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: CustomButton(
                width: 316.1,
                onPressed: () => Navigator.of(context).push(
                  PageTransition(
                    child: const ConsumerPage(),
                    type: PageTransitionType.leftToRight,
                  ),
                ),
                backgroundColor: const Color(0xFF363d80),
                isThreeD: true,
                height: 56,
                borderRadius: 32,
                shadowColor: Colors.black,
                animate: true,
                margin: const EdgeInsets.all(10),
                child: Text(
                  'Log In',
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
            const Text(
              'Forgotten your Password?',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: HorizontalLine(text: 'New To ShopLocal?'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Don\'t have an account?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFFC4C4C4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(32),
              child: ElevatedButton(
                child: const Text('Create an account?'),
                onPressed: () => Navigator.of(context).push(
                  PageTransition(
                    child: const SecondPage(),
                    type: PageTransitionType.leftToRight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
