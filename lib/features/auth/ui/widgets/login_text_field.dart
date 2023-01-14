import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          helperText: 'Не менее 6 символов',
          helperStyle: TextStyle(color: Colors.black),
          labelText: 'Имя пользователя',
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
