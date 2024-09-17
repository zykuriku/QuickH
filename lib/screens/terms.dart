import 'package:flutter/material.dart';
import 'package:get/get.dart';



final List<String> terms = [
  "Location Permissions: The app requires access to your location to function properly. Your real-time location is crucial to send SOS signals to nearby users and emergency services. You must enable high-accuracy location mode for the app to work efficiently.",
  "Notification Permissions: The app requires notification permissions to send you real-time alerts, such as SOS notifications from other users or important app updates. Notifications may include emergency alerts, service updates, and relevant information regarding your safety.",
  "User Responsibility: You are responsible for using the SOS signal function only in genuine emergencies. Misuse may result in loss of access to the app. You must ensure that the information you provide, including location and contact details, is accurate.",
  "Privacy and Data Use: We respect your privacy. Your location data is only used to facilitate SOS functions and will not be shared with third parties for advertising or marketing. Location data may be temporarily stored during an SOS alert but will be deleted once the situation is resolved.",
  "Emergency Contacts: You are encouraged to set up emergency contacts within the app. In the event of an SOS signal, the app may notify these contacts in addition to nearby users. By adding contacts, you agree that they may receive SOS notifications with your location details.",
  "Internet Access: The app requires an active internet connection (Wi-Fi or mobile data) to send SOS signals and notifications to other users. In offline mode, certain features like real-time location sharing and SOS alerts may not work properly.",
  "Limitation of Liability: While we strive to provide accurate and timely SOS alerts, we cannot guarantee that the app will always work under all conditions, including poor internet connections or GPS inaccuracy. You are responsible for assessing the app's performance and should not rely solely on it in life-threatening situations. Always contact emergency services directly if needed.",
  "App Updates: The app may automatically update to ensure you receive the latest security patches and features. You must keep the app up to date to ensure proper functionality.",
  "Termination of Service: We reserve the right to terminate your access to the app if you misuse the SOS feature, violate any of these terms, or engage in fraudulent activities. You may choose to stop using the app at any time, but you must uninstall the app from your device to fully terminate its use.",
  "Changes to Terms: We reserve the right to update these terms at any time. You will be notified of any significant changes through the app."
];
class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Terms and Conditions',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.white,

      body: ListView(

        children: [

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome to our SOS App. By using this app, you agree to the following terms and conditions. Please read them carefully.',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w500
              ),

              ),
            ),
          ),


          ListView.builder(
            shrinkWrap: true,
            itemCount: terms.length,
            itemBuilder: (context,index){
          return ListTile(
            title: Text((index+1).toString()+". "+terms[index]),

          );
        }),


          Material(
            elevation: 10.0,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 100.0),
              child: MaterialButton(



                  onPressed: () {

                Get.toNamed('/sign');
              },

              child: Text('Agree & Continue',
              style: TextStyle(
                color: Colors.white
              ),),
                height: 50.0,
                minWidth: 100.0,
                color: Colors.blue,
              ),
            ),
          )

        ]
      ),
    );
  }
}
