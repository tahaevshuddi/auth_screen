import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password(this.controller, {super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
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
