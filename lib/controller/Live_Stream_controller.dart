import 'package:get/get.dart';

class LiveStreamController extends GetxController {
  // State for the options (Live stream, Record & Upload)
  var isLiveStreamSelected = true.obs; // default to live stream

  // Selected streaming platform
  var selectedPlatform = ''.obs;

  // Method to switch between live stream and record/upload
  void setLiveStream(bool isLive) {
    isLiveStreamSelected.value = isLive;
  }

  // Method to set the selected platform
  void setPlatform(String platform) {
    selectedPlatform.value = platform;
  }

  // Method to navigate to the next step (Go Live button)
  void goLive() {
    if (selectedPlatform.isNotEmpty) {
      // Proceed with Go Live logic, e.g. API call, streaming logic etc.
      print('Going live on $selectedPlatform');
    } else {
      Get.snackbar('Error', 'Please select a platform to go live.');
    }
  }
}
