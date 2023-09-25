import 'package:flutter/material.dart';
class PasswordToggle extends StatefulWidget {
  final VoidCallback onTap;

  const PasswordToggle({Key? key, required this.onTap}) : super(key: key);

  @override
  _PasswordToggleState createState() => _PasswordToggleState();
}

class _PasswordToggleState extends State<PasswordToggle> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _togglePasswordVisibility();
      },
      child: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
        color: Colors.grey,
      ),
    );
  }
}