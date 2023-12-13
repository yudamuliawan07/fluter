import 'package:flutter/material.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.yellow,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid)
        ),


      ),
      appBar: AppBar(
        title: Text("Vokks"),
        backgroundColor: Colors.blue.shade400,

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("yuda@gmail.com"),
              accountName: Text("Coding Asal"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/logo.png"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("My Page"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Order Overview"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text("Invoice/Delivery Notes/Receipt"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.create_new_folder_outlined),
              title: Text("Wishlist"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Personal Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("My Address"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.branding_watermark),
              title: Text("Brand Management"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite_outline),
              title: Text("Personal Collection"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(product[index][0]),
                backgroundColor: Colors.blue.shade200,
              ),
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
