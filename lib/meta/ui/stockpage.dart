import 'package:flutter/material.dart';
import 'package:mlth/meta/ui/detailSelectionPage.dart';
import 'package:mlth/meta/ui/stockSelectionPage.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
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

  bool isChecked = false;

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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: Text("Factory"),
                        ),
                      ),
                      Container(height: 50, width: 1, color: const Color(0xff009348)),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),


                        child: Center(
                          child: DropdownButton(
                            hint: Text('Select Item'),
                            // Not necessary for Option 1
                            value: _selectedLocation1,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation1 = newValue as String?;
                              });
                            },
                            items: _locations1.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: Text("Garden"),
                        ),
                      ),
                      Container(height: 50, width: 1, color:const Color(0xff009348)),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: DropdownButton(
                            hint: Text('Select Item'),
                            // Not necessary for Option 1
                            value: _selectedLocation2,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation2 = newValue as String?;
                              });
                            },
                            items: _locations2.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: Text("Type"),
                        ),
                      ),
                      Container(height: 50, width: 1, color:const Color(0xff009348)),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: DropdownButton(
                            hint: Text('Select Item'),
                            // Not necessary for Option 1
                            value: _selectedLocation3,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation3 = newValue as String?;
                              });
                            },
                            items: _locations3.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gridViewBotm = true;
                    });
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
                        "SHOW",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: gridViewBotm,
                  child: Padding(
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
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                            ),
                            itemCount: gridItems.length,
                            itemBuilder: (context, index) {
                              return Container(
                                color: const Color(0xff009348),
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
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StockSelectionDetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff198e98),
                              ),
                              child: Center(
                                child: Text(
                                  "SAMPLE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
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
