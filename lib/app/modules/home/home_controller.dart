import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xxoo/app/data/services/network_service.dart';
import 'package:xxoo/app/routes/app_pages.dart';

class HomeController extends GetxController {
  var textFieldCtrl = TextEditingController();
  final _networkService = Get.find<NetworkService>();

  auth() async {
    String nickname = textFieldCtrl.text;
    var regResult = await _networkService.registration(nickname);
    if (!regResult) {
      Get.showSnackbar(const GetSnackBar(
        title: 'Регистрация неуспешна',
        message: 'Попробуйте что нибудь с этим сделать',
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      ));
    }
    print(nickname);
  }

  @override
  void onReady() {
    super.onReady();
    Get.offNamed(Routes.ROOMS);
  }
}
