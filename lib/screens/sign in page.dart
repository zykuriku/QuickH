import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      // body: Container(
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           colors: [bgColor, gColor, nColor, kColor],
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter)),
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 24.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         Padding(
      //           padding:
      //           const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Scoopilicious!',
      //                 style: TextStyle(fontSize: 50.0),
      //               ),
      //               Text(
      //                 'We are pleased to',
      //                 style: TextStyle(fontSize: 38.0),
      //               ),
      //               Text(
      //                 'welcome you~ ',
      //                 style: TextStyle(fontSize: 29.0),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 48.0,
      //         ),
      //         TextField(
      //           onChanged: (value) {
      //             email = value;
      //           },
      //           textAlign: TextAlign.center,
      //           keyboardType: TextInputType.emailAddress,
      //           decoration: InputDecoration(
      //             hintText: 'Enter your email',
      //             contentPadding:
      //             EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.brown, width: 1.0),
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.brown, width: 2.0),
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 8.0,
      //         ),
      //         TextField(
      //           onChanged: (value) {
      //             password = value;
      //           },
      //           textAlign: TextAlign.center,
      //           obscureText: true,
      //           decoration: InputDecoration(
      //             hintText: 'Enter your password',
      //             contentPadding:
      //             EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.brown, width: 1.0),
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.brown, width: 2.0),
      //               borderRadius: BorderRadius.all(Radius.circular(32.0)),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 24.0,
      //         ),
      //         Padding(
      //           padding: EdgeInsets.symmetric(vertical: 16.0),
      //           child: Material(
      //             color: Colors.brown,
      //             borderRadius: BorderRadius.all(Radius.circular(30.0)),
      //             elevation: 5.0,
      //             child: MaterialButton(
      //               onPressed: () async {
      //                 final newUser =
      //                 await _auth.createUserWithEmailAndPassword(
      //                     email: email, password: password);
      //                 if (newUser != null) {
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => HomePage()));
      //                 }
      //               },
      //               minWidth: 200.0,
      //               height: 42.0,
      //               child: Text(
      //                 'Sign up',
      //                 style: TextStyle(color: Colors.white),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}