import 'package:firstproject/detail.dart';
import 'package:firstproject/widget/my_radio.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  _MyFormState(){
    _selectedVal = _productSizesList[0];
  }
  final _productController = TextEditingController();

  bool? _checkBox, _listilecheckbox = false;

  ProductTypeEnum? _productTypeEnum;

  final _productSizesList = ["Small", "Medium", "Large", "Xlarge"];
  String? _selectedVal = "";

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
                MyRadio(
                    title: ProductTypeEnum.Deliverable.name,
                    value: ProductTypeEnum.Deliverable,
                    selectedProductType: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    }),
                SizedBox(
                  width: 5.0,
                ),
                MyRadio(
                    title: ProductTypeEnum.Downloadable.name,
                    value: ProductTypeEnum.Downloadable,
                    selectedProductType: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    }),
              ],
            ),


            DropdownButtonFormField(
              value: _selectedVal,
              items: _productSizesList.map(
                      (e) => DropdownMenuItem(child: Text(e), value: e,)

              ).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.blue,
              ),
              dropdownColor: Colors.blue.shade50 ,
              decoration: InputDecoration(
                labelText: "Product Sizes",
                prefixIcon: Icon(
                  Icons.accessibility_new_rounded,
                  color: Colors.blue,
                ),
              ),
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
