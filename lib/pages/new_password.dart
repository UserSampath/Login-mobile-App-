import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_text_field.dart';

class NewPassword extends StatefulWidget {
  NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  void signInUserIn() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewPassword()));
  }

  final newPasswordController = TextEditingController();

  final conformPasswordController = TextEditingController();

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
                  'Create New Password',
                  style: TextStyle(color: Colors.grey[700], fontSize: 24),
                ),
                const SizedBox(height: 50),
                MyTextField(
                  controller: newPasswordController,
                  hintText: 'New Password',
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: conformPasswordController,
                  hintText: 'Conform Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: signInUserIn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
