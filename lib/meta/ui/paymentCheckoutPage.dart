import 'package:flutter/material.dart';

class PaymentCheckout extends StatelessWidget {
  const PaymentCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHECKOUT",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        backgroundColor:const Color(0xff009348),
      ),
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
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/credit_card.png"),
                  title: Text(
                    "Debit / Cradit Card",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.chevron_right),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/phonepe.png"),
                  title: Text(
                    "PhonePe",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.chevron_right),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/google_pay.png"),
                  title: Text(
                    "GooglePay",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.chevron_right),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/paytm.png"),
                  title: Text(
                    "Paytm",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.chevron_right),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/cod.png"),
                  title: Text(
                    "Cash on Delivery",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.chevron_right),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
