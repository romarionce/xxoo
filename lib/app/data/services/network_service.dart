import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:xxoo/app/data/models/new_user/new_user.dart';
import 'package:xxoo/app/data/models/user/user.dart';
import 'package:xxoo/app/data/services/storage_service.dart';
import 'package:xxoo/app/routes/app_pages.dart';

class NetworkService extends GetxService {
  var storage = Get.find<StorageService>();
  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));

  NewUser? user;

  Future<NetworkService> init() async {
    await readPrefs();
    return this;
  }

  Future<void> readPrefs() async {
    var userReaded = storage.readUserData();

    print(userReaded);
  }

  Future<bool> registration(String nick) async {
    try {
      var response = await client.post("user/add/$nick");
      var newUser = NewUser.fromJson(response.data);
      print(newUser);
      await storage.writeUserData(newUser);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
