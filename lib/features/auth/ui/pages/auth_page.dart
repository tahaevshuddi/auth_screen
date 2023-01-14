import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../widgets/password_text_field.dart';
import '../widgets/login_text_field.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  String resultatImage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResultImage(resultatImage),
              LoginTextField(nameController),
              PasswordTextField(passwordController),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.characters.length < 6 ||
                      passwordController.text.characters.length < 6) {
                    setState(() {
                      resultatImage = Images.redLock;
                    });
                  } else {
                    setState(() {
                      resultatImage = Images.greenLock;
                    });
                  }
                },
                child: const Text('Войти'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ResultImage extends StatelessWidget {
   const ResultImage(this.resultImage, {super.key});

   final String resultImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image.asset(resultImage.isEmpty ? Images.transparency : resultImage),
    );
  }
}

