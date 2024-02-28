import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xxoo/app/modules/rooms/rooms_controller.dart';

class RoomsView extends GetView<RoomsController> {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RoomsPage')),
        body: SafeArea(child: Text('RoomsController')));
  }
}
