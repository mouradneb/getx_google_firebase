import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'WelcomeView is working',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {
              controller.logout();
            },
            child: Text(
              "Logout",
            ),
          )
        ]),
      ),
    );
  }
}
