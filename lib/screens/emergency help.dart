import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quick_h/screens/MapPage.dart';

class SOSController extends GetxController {
  // Reactive boolean to track whether the button is pressed
  var isPressed = false.obs;
  Timer? _timer;

  void startTimer() {
    // Starts the timer for 3 seconds
    _timer = Timer(Duration(seconds: 3), () {
      // Trigger SOS function after 3 seconds of holding the button
      sendSOS();
    });
  }

  void cancelTimer() {
    // Cancel the timer
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void sendSOS() {
    // TODO: write actual functionality after research
    print("SOS Signal Sent!");
    Get.snackbar(
      "SOS Alert",
      "SOS Signal Sent!",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
    );

    Get.to(() => Mappage());
  }

  @override
  void onClose() {
    cancelTimer(); // Cancel the timer if the controller is disposed
    super.onClose();
  }
}

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  final SOSController controller = Get.put(SOSController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Emergency SOS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onLongPressStart: (_) {
                    controller.isPressed.value = true;  // Set isPressed to true
                    controller.startTimer();             // Start the timer
                  },
                  onLongPressEnd: (_) {
                    controller.isPressed.value = false;  // Set isPressed to false
                    controller.cancelTimer();            // Cancel the timer
                  },
                  child: Obx(
                        () => AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: controller.isPressed.value ? 150 : 120,
                      width: controller.isPressed.value ? 150 : 120,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'SOS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Press and hold for 3 seconds to send SOS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
