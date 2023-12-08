import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.blueAccent,
        
      ),
      body: Image.asset("images/logo.png", height: 300.0, fit: BoxFit.fitWidth,)

      // const Image(image: AssetImage("images/logo.png"),
      //   width: 200.0,
      //   height: 300.0,
      //   fit: BoxFit.contain,
      // )

      //const Image(image: NetworkImage("link"),)
      //Image.asset
    );
  }
}

