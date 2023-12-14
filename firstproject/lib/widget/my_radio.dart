import 'package:flutter/material.dart';

import '../form.dart';
enum  ProductTypeEnum { Downloadable, Deliverable }


class MyRadio extends StatelessWidget {
  MyRadio({Key? key,
    required this.title,
    required this.value,
    required this.selectedProductType,
    required this.onChanged,
  }) : super(key: key);

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? selectedProductType;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
          contentPadding: const EdgeInsets.all(0.0),
          value: value,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
          ),
          groupValue: selectedProductType,
          dense:  true,
          tileColor: Colors.deepPurple.shade50,

          title: Text(title),
          onChanged: onChanged),
    );
  }
}
