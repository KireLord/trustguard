import 'package:flutter/material.dart';
import 'package:trustguard/utils/utils.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: userController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: Utils.user,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: Utils.pass,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}