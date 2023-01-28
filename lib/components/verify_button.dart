import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  final Function()? onTap;
  const VerifyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.blue[500], borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text(
            'verify',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
