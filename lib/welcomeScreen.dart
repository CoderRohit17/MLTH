// ignore_for_file: prefer_const_constructors, duplicate_ignore, deprecated_member_use, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mlth/meta/ui/loginpage.dart';
import 'package:mlth/meta/ui/registration.dart';
import 'package:mlth/meta/widgets/myButton.dart';
import 'package:mlth/meta/ui/onBordingScreen.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/new_back.jpg',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),

            Column(
              children: [


                Container(

                  margin: const EdgeInsets.only(top: 100, right: 15, left: 15),
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Expanded(child: OnBoardScreen()),
                ),

                Text(
                  "Ready to order from best garden?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MyButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }, text: "Sign in"),
                    SizedBox(
                      width: 15,
                    ),
                   MyButton(onPressed: (){
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) => RegistrationPage(),
                       ),
                     );
                   }, text: "Sign up"),
                  ],
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
