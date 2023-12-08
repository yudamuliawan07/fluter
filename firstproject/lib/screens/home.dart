import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lets Begin"),
              Icon(Icons.add_shopping_cart_outlined),
            ],
          ),
          // icon: Icon(Icons.add_shopping_cart_outlined),
          // label: Text("Let's Begin"),
          // onPressed: null,
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              fixedSize: const Size(300, 80),
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              primary: Colors.yellow,
              onPrimary: Colors.black87,
              elevation: 15,
              shadowColor: Colors.yellow,
              side: BorderSide(color: Colors.black87, width: 2),
              shape: StadiumBorder(),

          ),
        ),
      ),
    );
  }
}
