import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:xxoo/app/services/network_service.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  Get.put(NetworkService());
}
