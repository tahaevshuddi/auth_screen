import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
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
