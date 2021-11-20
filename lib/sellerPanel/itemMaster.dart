import 'package:flutter/material.dart';

class ItemMaster extends StatefulWidget {
  const ItemMaster({Key? key}) : super(key: key);

  @override
  State<ItemMaster> createState() => _ItemMasterState();
}

class _ItemMasterState extends State<ItemMaster> {
  List<String> _locations1 = ['Grade 1', 'Grade 2', 'Grade 3', 'Grade 4'];

  String? _selectedLocation1;

  List<String> _locations2 = ['Type 1', 'Type 2', 'Type 3', 'Type 4'];

  String? _selectedLocation2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ITEM MASTER",
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

            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text(
                        "Product Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 50, width: 1, color: Color(0xff198e98)),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(0.0),
                          isDense: true,
                          hintText: "Product name",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
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
                      child: Text(
                        "Grade",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 50, width: 1, color: Color(0xff198e98)),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: DropdownButton(
                        hint: Text('Select Item'), // Not necessary for Option 1
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
              padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text(
                        "Item Type",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 50, width: 1, color: Color(0xff198e98)),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: DropdownButton(
                        hint: Text('Select Item'), // Not necessary for Option 1
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
