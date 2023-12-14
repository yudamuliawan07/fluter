import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {

  String title, subTitle;
  IconData leadingIcon, trailingIcon;
  Color? listfileColor, iconColor;

  NewWidget({
    required this.title,
    required this.subTitle,
    this.iconColor,
    this.listfileColor,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: listfileColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            width: 1.0,
            color: Colors.blue,
          ),
        ),
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text(subTitle),
        leading: IconButton(onPressed: (){}, icon: Icon(leadingIcon), color: Colors.blue,),
        trailing: IconButton(onPressed: (){}, icon: Icon(trailingIcon), color: Colors.blue,),
      ),
    );
  }
}
