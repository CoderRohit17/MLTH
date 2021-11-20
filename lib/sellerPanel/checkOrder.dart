import 'package:flutter/material.dart';

class CheckOrder extends StatelessWidget {
  const CheckOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHECK ORDER",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff94b0ae),

      ),
      backgroundColor: Color(0xffd1ffbd),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
