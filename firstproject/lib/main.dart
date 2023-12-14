import 'package:flutter/material.dart';

void main() => runApp(CTStatelessClass());

class CTStatelessClass extends StatelessWidget {
  const CTStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: CTStatefullClass(),
      ),
    );
  }
}

class CTStatefullClass extends StatefulWidget {
  const CTStatefullClass({super.key});

  @override
  State<CTStatefullClass> createState() => _CTStatefullClassState();
}

class _CTStatefullClassState extends State<CTStatefullClass> {
  bool liked = false;

  @override

  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Text"),
          trailing: IconButton(
            icon: liked? (Icon(Icons.favorite_outline)) : (Icon(Icons.favorite)),
            onPressed: () {
              setState(() {
                liked = !liked;
              });
            },
          ),
        ),
      ],
    );
  }
}
