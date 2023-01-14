import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(this.controller, {super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: const InputDecoration(
          helperText: 'Не менее 6 символов',
          helperStyle: TextStyle(color: Colors.black),
          labelText: 'Пароль',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
