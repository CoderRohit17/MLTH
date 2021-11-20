import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlth/meta/ui/homepage.dart';
import 'package:mlth/meta/ui/loginpage.dart';
import 'package:mlth/meta/widgets/myButton.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool passVisible = false;
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,

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

            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
                height: 200,
                width: 150,
              ),
            ),
            SingleChildScrollView(


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                        fontSize: 22,
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffd2f8d2),
                            width: 2.0,
                            style: BorderStyle.solid), //Border.all

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffd2f8d2),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          hintText: "Full Name",
                          // label: Text("Username"),
                          hintStyle: TextStyle(
                              fontSize: 16.0, color: Color(0xffE2DFD2)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xfffac637),
                            size: 25,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffd2f8d2),
                            width: 2.0,
                            style: BorderStyle.solid), //Border.all

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffd2f8d2),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          hintText: "Email",
                          // label: Text("Username"),
                          hintStyle: TextStyle(
                              fontSize: 16.0, color: Color(0xffE2DFD2)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.alternate_email_rounded,
                            color: Color(0xfffac637),
                            size: 25,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffd2f8d2),
                            width: 2.0,
                            style: BorderStyle.solid), //Border.all

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffd2f8d2),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          hintText: "Mobile",
                          // label: Text("Username"),
                          hintStyle: TextStyle(
                              fontSize: 16.0, color: Color(0xffE2DFD2)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.call,
                            color: Color(0xfffac637),
                            size: 25,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),

                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffd2f8d2),
                            width: 2.0,
                            style: BorderStyle.solid), //Border.all

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffd2f8d2),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: TextField(
                        obscureText: !passVisible,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.white),
                          ),
                          hintText: "Password",
                          // label: Text("Username"),
                          hintStyle: TextStyle(
                              fontSize: 16.0, color: Color(0xffE2DFD2)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: Color(0xfffac637),
                            size: 25,
                          ),
                          isDense: true,

                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passVisible = !passVisible;
                              });
                            },
                            icon: passVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: MyButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }, text: "Sign in"),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white),
                            color: Colors.white),
                        child: RichText(
                          text: const TextSpan(
                            text: "Have an account ?  ",
                            style: TextStyle(color: Colors.black54),
                            children: [
                              TextSpan(
                                text: "Sign in",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
