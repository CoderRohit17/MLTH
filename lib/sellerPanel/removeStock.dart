import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class RemoveStock extends StatefulWidget {
  const RemoveStock({Key? key}) : super(key: key);

  @override
  State<RemoveStock> createState() => _RemoveStockState();
}

class _RemoveStockState extends State<RemoveStock> {

  String? _dateCount;
  String? _range;

  @override
  void initState() {
    _dateCount = '';
    _range = '';
    super.initState();
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      }
    });
  }

  List<String> _locations1 = ['Grade 1', 'Grade 2', 'Grade 3', 'Grade 4'];

  String? _selectedLocation1;

  List<String> _locations2 = ['Type 1', 'Type 2', 'Type 3', 'Type 4'];

  String? _selectedLocation2;

  List<String> _locations3 = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  String? _selectedLocation3;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "REMOVE STOCK",
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
                        "Item",
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
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
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
                          hintText: "Lot Num",
                          hintStyle:
                          TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
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
                          hintText: "Invoice Num",
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
                    width: MediaQuery.of(context).size.width / 2.3,
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
                          hintText: "Total Bags",
                          hintStyle:
                          TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
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
                          hintText: "Total Weight",
                          hintStyle:
                          TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Pick Date",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( right: 15, left: 15),
              child: SfDateRangePicker(
                backgroundColor: Colors.white,
                onSelectionChanged: _onSelectionChanged,

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
                    "REMOVE",
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
    );
  }
}
