import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            'Введите ник',
            style: TextStyle(fontSize: 20),
          ),
          TextField(
            controller: controller.textFieldCtrl,
          ),
          ElevatedButton(
            onPressed: () => controller.auth(),
            child: const Text("Войти"),
          )
        ],
      ),
    );
  }
}
