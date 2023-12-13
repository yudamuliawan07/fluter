import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image(image: AssetImage("images/logo.png"),
                fit: BoxFit.cover
            ),
            Text("Example", style: TextStyle(fontSize: 40, color: Colors.green),),
            Text("Data", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),)
          ],
        ),



      ),
    );
  }
}
