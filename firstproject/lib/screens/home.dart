import 'package:flutter/material.dart';

import '../widget/newwidget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> product = ["Bed", "Kasur", "Kuda"];
  List<String> productDetails = [
    "Bed is good",
    "Kasur is nice",
    "Kuda is strong"
  ];
  List<int> price = [1126, 2234, 2234];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          NewWidget(title: "mouse",subTitle: "Noted",iconColor: Colors.blue, leadingIcon: Icons.mobile_friendly,listfileColor: Colors.grey.shade200, trailingIcon: Icons.bike_scooter),
          NewWidget(title: "mouse",subTitle: "Noted",iconColor: Colors.blue, leadingIcon: Icons.mobile_friendly,listfileColor: Colors.yellow, trailingIcon: Icons.h_mobiledata),

        ],
      ),
    );
  }
}

