import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/home/constants.dart';
import 'package:login_screen/home/home_screens/home/home_screen.dart';

import '../../../login/login_screens/login_screen.dart';

class HelpOrPost extends StatelessWidget {
  const HelpOrPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text(
            'Help',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          )),
    );

    final postButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text(
            'Post',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  helpButton,
                  SizedBox(
                    height: 35,
                  ),
                  postButton,
                  SizedBox(
                    height: 15,
                  ),
                  ActionChip(
                      label: Text("Logout"),
                      onPressed: () {
                        logout(context);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
