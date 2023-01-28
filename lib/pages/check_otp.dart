import 'package:flutter/material.dart';
import 'package:login/components/my_text_field.dart';
import 'package:login/components/verify_button.dart';
import 'package:login/pages/new_password.dart';

class CheckOTP extends StatefulWidget {
  CheckOTP({super.key});

  @override
  State<CheckOTP> createState() => _CheckOTPState();
}

class _CheckOTPState extends State<CheckOTP> {
  void verifyUser() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewPassword()));
  }

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 232, 243),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 15),
                Text(
                  'We sent a OTP to your Email address',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 50),
                MyTextField(
                  controller: userNameController,
                  hintText: 'OTP',
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                VerifyButton(
                  onTap: verifyUser,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
