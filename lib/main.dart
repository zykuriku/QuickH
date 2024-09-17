import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quick_h/screens/emergency%20help.dart';
import 'package:quick_h/screens/loading.dart';
import 'package:quick_h/screens/login%20page.dart';
import 'package:quick_h/screens/sign%20in%20page.dart';
import 'package:quick_h/screens/verify.dart';
import 'screens/MapPage.dart';
import 'package:get/get.dart';
import 'screens/first page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QuickH',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => FirstPage()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/sign', page: () => Register()),
        GetPage(name: '/map', page: () => Mappage()),
        GetPage(name: '/verify', page: () => Verify()),
        GetPage(name: '/emergency', page: () => Emergency()),
        GetPage(name: '/loading', page: () => Loading()),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
