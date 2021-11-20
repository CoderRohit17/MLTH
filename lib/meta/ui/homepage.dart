import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mlth/meta/ui/stockpage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controller = PageController(
  initialPage: 0,
);
int _currentPage = 0;

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    "assets/images/banner0.jpg",
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
    "assets/images/banner4.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "MLTH",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff009348),
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Material(
                elevation: 0,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    child: Image.asset(
                      'assets/images/garden.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 175,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [0, 1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 1.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              imgList[i],
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                DotsIndicator(
                  dotsCount: imgList.length,
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
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StockPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/logo.png'),
                                radius: 20.0,
                                backgroundColor: Colors.transparent,
                              ),
                              Text(
                                "GUWAHATI",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/logo.png'),
                              radius: 20.0,
                              backgroundColor: Colors.transparent,
                            ),
                            Text(
                              "KOLKATA",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/logo.png'),
                              radius: 20.0,
                              backgroundColor: Colors.transparent,
                            ),
                            Text(
                              "SILIGURI",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.

          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xff009348),
              ),
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.speed),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              title: Text(
                "Dashboard",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "User Profile",
                style: TextStyle(fontSize: 20),
              ),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.notifications_active_outlined),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 20),
              ),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.account_balance_rounded),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 20),
              ),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              dense: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
