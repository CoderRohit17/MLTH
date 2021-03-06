import 'package:flutter/material.dart';
import 'package:mlth/meta/ui/paymentCheckoutPage.dart';

class StockSelectionDetailPage extends StatelessWidget {
  const StockSelectionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool gridViewBotm = false;

    List<String> _locations1 = [
      'Factory 1',
      'Factory 2',
      'Factory 3',
      'Factory 4'
    ];
    List<String> _locations2 = ['Garden 1', 'Garden 2', 'Garden 3', 'Garden 4'];
    List<String> _locations3 = ['Type 1', 'Type 2', 'Type 3', 'Type 4'];
    String? _selectedLocation1;
    String? _selectedLocation2;
    String? _selectedLocation3;

    List<String> gridItems = [
      "Box",
      "Lot",
      "Garden",
      "Garde",
      "Bag",
      "Tot",
      "true",
      "141",
      "BPS",
      "ABC",
      "25",
      "275KG",
      "true",
      "142",
      "DMA",
      "QRS",
      "26",
      "300KG",
      "true",
      "143",
      "QRA",
      "TRS",
      "27",
      "200KG",
      "true",
      "144",
      "SRT",
      "DDA",
      "28",
      "100KG",
    ];

    bool isChecked = true;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

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
      backgroundColor: Color(0xff198e98),
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                      ),
                      itemCount: gridItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Color(0xff198e98),
                          child: Center(
                            child: gridItems[index].toString() != "true"
                                ? Text(
                                    gridItems[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                : Checkbox(
                                    checkColor: Colors.white,
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {},
                                  ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  Text(
                    "Delivery Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "courier charges : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " ???300/- ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pincode : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Pincode",
                            hintStyle:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          keyboardType: TextInputType.text,
                          maxLines: 5,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Address",
                            hintStyle:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentCheckout(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "PAY NOW",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
