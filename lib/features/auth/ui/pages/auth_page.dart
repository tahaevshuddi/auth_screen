import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../widgets/password.dart';
import '../widgets/user_name.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  Image resultatImage = Image.asset(Images.transparency);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResultImage(resultatImage),
              UserName(nameController),
              Password(passwordController),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.characters.length < 6 &&
                      passwordController.text.characters.length < 6) {
                    setState(() {
                      resultatImage = Image.asset(Images.redLock);
                    });
                  } else {
                    setState(() {
                      resultatImage = Image.asset(Images.greenLock);
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

  final Image resultImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: resultImage,
    );
  }
}

