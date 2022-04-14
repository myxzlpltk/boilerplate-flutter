import 'package:boilerplate/commons/constants.dart';
import 'package:boilerplate/commons/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Home Page', style: bodyText2Style),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Login Page'),
              onPressed: () => Navigator.pushNamed(context, Routes.login),
            ),
          ],
        ),
      ),
    );
  }
}
