import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.angular),
          onPressed: () {},
          iconSize: 100,
          color: Colors.lightBlue,
          splashColor: Colors.white,
          highlightColor: Colors.red,
        ),
      ),
    );
  }
}
