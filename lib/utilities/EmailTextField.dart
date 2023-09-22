import 'package:flutter/material.dart';
class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!, // Light grey color
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: 'Email', // Hint text
            contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            border: InputBorder.none, // Remove the inner border
          ),
        ),
      ),
    );
  }
}
