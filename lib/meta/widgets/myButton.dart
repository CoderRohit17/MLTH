import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;

  const MyButton({required this.onPressed, required this.text, Key? key})
      : super(key: key);


  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(0),

      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff00863d), Color(0xff95c43a)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          height: 40,
          width: 125,
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
