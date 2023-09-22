import 'package:flutter/material.dart';
import 'package:jm_plastics/utilities/EmailTextField.dart';
import 'package:get/get.dart';

import '../constants.dart';

class PasswordController extends GetxController {
  var obscureText = true.obs; // Observable variable for _obscureText state

  void togglePasswordVisibility() {
    obscureText.toggle();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final PasswordController _passwordController =
        Get.put(PasswordController());

    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 6,
              ),
              Center(
                child: Image.asset(
                  'assets/images/SplashLogo.png',
                  width: 150,
                  height: 150,
                ),
              ),
              EmailTextField(emailController: _emailController),
              PasswordTextField(passwordController: _passwordController),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFF029BE3),
                            decoration: TextDecoration.underline,
                            fontSize: 12),
                      ))),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Support',
                        style:
                            TextStyle(color: Color(0xFF029BE3), fontSize: 12),
                      ))),
              SizedBox(
                height: screenHeight / 10,
              ),
              Container(
                width: screenWidth,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // Rounded border
                  color: Color(0xFF029BE3), // Button background color
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: fs1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Or'),
                ),
              ),
              Container(
                width: screenWidth,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), // Rounded border
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF029BE3), // Blue border color
                    width: 2.0, // Border width
                  ), // Button background color
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF029BE3), // Text color
                      fontSize: fs1,
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

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required PasswordController passwordController,
  }) : _passwordController = passwordController;

  final PasswordController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Obx(
          () => TextField(
            obscureText: _passwordController.obscureText.value,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                  onTap: _passwordController.togglePasswordVisibility,
                  child: Icon(
                    _passwordController.obscureText.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
