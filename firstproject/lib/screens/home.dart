import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> product = ["Bed", "Kasur", "Kuda"];
  List<String> productDetails = ["Bed is good", "Kasur is nice", "Kuda is strong"];
  List<int> price = [1126, 2234, 2234];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ListTile(

              leading: CircleAvatar(child: Text(product[index][0]), backgroundColor: Colors.blue.shade200,),
              title: Text(product[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
