import 'package:flutter/material.dart';
import 'package:login/components/my_text_field.dart';
import 'package:login/components/verify_button.dart';

class ForgotPassword extends StatelessWidget {
  void verifyUser() {}
  ForgotPassword({super.key});

  final userEmailController = TextEditingController();

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
                  'Verify your Account ',
                  style: TextStyle(color: Colors.grey[700], fontSize: 24),
                ),
                const SizedBox(height: 50),
                MyTextField(
                  controller: userEmailController,
                  hintText: 'User Email',
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        ' Back to Login Page',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
