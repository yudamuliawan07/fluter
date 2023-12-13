import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          itemExtent: 100.0,
          reverse: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp),backgroundColor: Colors.black12,),
              title: Text("Sales"),
              subtitle: Text("Sales of the waek"),
              trailing: Text("350"),
              onTap: (){},
              tileColor: Colors.grey.shade200,
            ),
            ListTile(
                leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text("Customers"),
              subtitle: Text("Total Customer"),
              trailing: Text("20"),
            ),
            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text("Profit"),
              subtitle: Text("Profit of the waek"),
              trailing: Text("20000"),
            ),
          ],
        ),
      ),

    );
  }
}
