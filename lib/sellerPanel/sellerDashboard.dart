import 'package:flutter/material.dart';
import 'package:mlth/sellerPanel/addStock.dart';
import 'package:mlth/sellerPanel/checkOrder.dart';
import 'package:mlth/sellerPanel/dispatchOrder.dart';
import 'package:mlth/sellerPanel/gardeMaster.dart';
import 'package:mlth/sellerPanel/itemMaster.dart';
import 'package:mlth/sellerPanel/itemType.dart';
import 'package:mlth/sellerPanel/removeStock.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({Key? key}) : super(key: key);

  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  List<String> gridItems = [
    "Item Master",
    "Grade Master",
    "Item Type",
    "Add Stock",
    "Remove Stock",
    "Check Order",
    "Dispatch Details"
  ];
  List<String> gridIcon = [
    "assets/images/item_master.jpg",
    "assets/images/grade_master.jpg",
    "assets/images/available.jpg",
    "assets/images/add_stock.png",
    "assets/images/remove_stock.png",
    "assets/images/check_order.jpg",
    "assets/images/dispetch.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MLTH Seller"),
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemMaster(),
                              ),
                            );
                          }
                          break;

                        case 1:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GradeMaster(),
                              ),
                            );
                          }
                          break;

                        case 2:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemType(),
                              ),
                            );
                          }
                          break;

                        case 3:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddStock(),
                              ),
                            );
                          }
                          break;

                        case 4:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RemoveStock(),
                              ),
                            );
                          }
                          break;

                        case 5:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CheckOrder(),
                              ),
                            );
                          }
                          break;

                        case 6:
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DispatchDetails(),
                              ),
                            );
                          }
                          break;

                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset(
                            gridIcon[index],
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            gridItems[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
