import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.20%dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FloatingActionButton(onPressed: (){
        Get.toNamed('/map');
      },
      child: Text('click me'),),
    );
  }
}
