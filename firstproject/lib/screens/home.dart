import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:  IconButton(icon:   Icon(Icons.menu), onPressed: (){},),
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},),
          IconButton(icon: Icon(Icons.search), onPressed: (){},),
          IconButton(icon: Icon(Icons.menu_book), onPressed: (){},),
        ],
        elevation: 0,
        // titleSpacing: 40.0,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),

      ),
      body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Image(image: AssetImage("images/logo.png"), width: 150,)),
                  Expanded(flex: 2, child: Image(image: AssetImage("images/logo.png"), width: 150,)),
                  Expanded(flex: 4,child: Image(image: AssetImage("images/logo.png"), width: 150,)),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Column(
                      children: [
                        Icon(Icons.phone, size: 35.0,),
                        Text("Phone")
                      ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.alt_route, size: 35.0,),
                      Text("Route")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, size: 35.0,),
                      Text("Share")
                    ],
                  ),

                ],
              ),
            ],
          ),
      ),
    );
  }
}
