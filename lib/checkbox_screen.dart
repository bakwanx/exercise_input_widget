import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {

  bool? checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTile(
          leading: Checkbox(
            value: checkedValue,
            onChanged: (bool? value) {
              setState(() {
                checkedValue = value!;
              });
            },
          ),
          title: Text("Saya menyatakan bahwa data yang saya isi benar"),
        ),
      ),
    );
  }
}
