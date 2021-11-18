import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlth/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passVisible = false;
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Color(0xff94b0ae),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 300,
                ),
                const SizedBox(
                  width: 50,
                  height: 2,
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  // child: Container(
                  //   padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(25),
                  //       bottomRight: Radius.circular(25),
                  //     ),
                  //     border: Border.all(color: Colors.white),
                  //   ),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       hintText: "Username",
                  //     ),
                  //     style: TextStyle(color: Colors.white),
                  //     controller: userName,
                  //   ),
                  // ),
                  child: TextField(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Username",
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  // child: Container(
                  //   padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(25),
                  //       bottomRight: Radius.circular(25),
                  //     ),
                  //     border: Border.all(color: Colors.white),
                  //   ),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       hintText: "Password",
                  //
                  //       suffixIcon: IconButton(
                  //         onPressed: () {
                  //           setState(() {
                  //             passVisible = !passVisible;
                  //           });
                  //         },
                  //         icon: passVisible
                  //             ? const Icon(Icons.visibility)
                  //             : const Icon(
                  //                 Icons.visibility_off,
                  //               ),
                  //       ),
                  //     ),
                  //     style: TextStyle(color: Colors.white),
                  //     obscureText: !passVisible,
                  //     controller: password,
                  //   ),
                  // ),
                  child: TextField(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    obscureText: !passVisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.security,
                        color: Colors.white,
                      ),
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_right_alt),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
