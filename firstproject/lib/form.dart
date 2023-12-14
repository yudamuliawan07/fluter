import 'package:firstproject/detail.dart';
import 'package:firstproject/widget/my_radio.dart';
import 'package:flutter/material.dart';



class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();

  bool? _checkBox,
      _listilecheckbox = false;

  ProductTypeEnum? _productTypeEnum;

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Add The Product"),
            const SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blue,
                tristate: true,
                value: _checkBox,
                onChanged: (val) {
                  setState(() {
                    _checkBox = val;
                  });
                }),
            CheckboxListTile(
              value: _listilecheckbox,
              title: Text("Top Product"),
              onChanged: (val) {
                setState(() {
                  _listilecheckbox = val;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            Row(
              children: [
                MyRadio(title: ProductTypeEnum.Deliverable.name,
                    value: ProductTypeEnum.Deliverable,
                    selectedProductType: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    }),
                SizedBox(width: 5.0,),
                MyRadio(title: ProductTypeEnum.Downloadable.name,
                    value: ProductTypeEnum.Downloadable,
                    selectedProductType: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    }),

              ],
            ),


            SizedBox(
              height: 20.0,
            ),
            myBtn(context)
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productName: _productController.text,
            );
          }),
        );
      },
      child: Text(
        "Submit".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
