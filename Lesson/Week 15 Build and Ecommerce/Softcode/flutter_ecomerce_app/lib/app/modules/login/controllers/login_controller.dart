import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/providers/api_provider.dart';
import '../../../routes/app_pages.dart';
import '';

class LoginController extends GetxController {
  final _apiProvider = Get.find<APIProvider>();
  // storage token

  final box = GetStorage();

  void login({required String email, required String password}) async {
    try {
      final response =
          await _apiProvider.login(email: email, password: password);
      if (response.statusCode == 200) {
        final accessToken = response.data['access_token'];
        box.write('token', accessToken);
        // go to dashboard
        // Get.snackbar("Success login", "login successfully!");
        Get.offAllNamed(Routes.HOME); // can not go back to login
      } else {
        Get.snackbar("Error", "Failed to login");
      }
    } catch (e) {
      print("Error Print $e");
    }
  }
}
