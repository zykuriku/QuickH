import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseAPI{

  final _firebaseMessaging = FirebaseMessaging.instance;


  Future<void> initNotifications(String uid) async{

    NotificationSettings settings=await _firebaseMessaging.requestPermission(alert: true, badge: true, sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('permission granted');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('provisional permission granted');
    } else {
      print('declined');
    }

    final token= _firebaseMessaging.getToken();
    await FirebaseFirestore.instance.collection('users').doc(uid).set(
      {
        'fcmToken': token,
      }
    );
    print(token); //TODO: add token to database
  }
}