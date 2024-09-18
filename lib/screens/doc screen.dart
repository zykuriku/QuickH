import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocScreen extends StatefulWidget {


  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        child: TextButton(
          onPressed: (){
            Get.toNamed('/');
          }, child: Text(
          'Doctor dashboard'
        ),
        ),
      ),
    );
  }
}
