import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'LoginView is working',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: Text("Login with Google"))
        ]),
      ),
    );
  }
}
