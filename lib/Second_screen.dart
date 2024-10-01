import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/Live_Stream_controller.dart';


class StreamingPlatformScreen extends StatelessWidget {
  final LiveStreamController controller = Get.find<LiveStreamController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIVE STREAM / RECORD'),

        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Match ID and Info
            Text(
              'MATCH ID: A2HD8ALK',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'TITAN XI vs ZEUS FOURS\nMatch date: 9 Aug, 2024  Time: 1:00 PM',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),

            // How you want to capture a match
            Text(
              'HOW YOU WANT TO CAPTURE A MATCH.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Live Stream and Record & Upload buttons (this will be pre-selected)
            Obx(() {
              return Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.setLiveStream(true),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: controller.isLiveStreamSelected.value
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Live stream',
                            style: TextStyle(
                              color: controller.isLiveStreamSelected.value
                                  ? Colors.blue
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.setLiveStream(false),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: !controller.isLiveStreamSelected.value
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Record & upload',
                            style: TextStyle(
                              color: !controller.isLiveStreamSelected.value
                                  ? Colors.blue
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: 20),

            // Select the streaming platform
            Text(
              'SELECT THE STREAMING PLATFORM',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // YouTube and Instagram buttons
            Obx(() {
              return Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.setPlatform('YouTube'),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: controller.selectedPlatform.value == 'YouTube'
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(Icons.video_library, color: Colors.red),
                              Text('YouTube',
                                  style: TextStyle(
                                      color: controller.selectedPlatform.value ==
                                          'YouTube'
                                          ? Colors.red
                                          : Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.setPlatform('Instagram'),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: controller.selectedPlatform.value ==
                                'Instagram'
                                ? Colors.purple
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(Icons.camera_alt, color: Colors.purple),
                              Text('Instagram',
                                  style: TextStyle(
                                      color: controller.selectedPlatform.value ==
                                          'Instagram'
                                          ? Colors.purple
                                          : Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: 30),

            // Go Live button
            ElevatedButton(
              onPressed: () => controller.goLive(),
              child: Text('GO LIVE'),
            ),
          ],
        ),
      ),
    );
  }
}










