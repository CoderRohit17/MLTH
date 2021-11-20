
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mlth/constants.dart';


class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

final _controller = PageController(
  initialPage: 0,
);
int _currentPage = 0;

List<Widget> _pages = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Image.asset("assets/images/garden.jpg"),
      ),
      Text(
        "Best Tea Garden",
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      )
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Image.asset("assets/images/leaf.png"),
      ),
      Text(
        "Best Quality Leaves",
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      )
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Image.asset("assets/images/teacup.jpg"),
      ),
      Text(
        "Assured Quality Product",
        style: kPageViewTextStyle,
        textAlign: TextAlign.center,
      )
    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DotsIndicator(
            dotsCount: _pages.length,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              activeColor: Colors.red,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
