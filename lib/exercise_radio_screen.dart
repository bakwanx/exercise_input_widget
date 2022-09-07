import 'package:flutter/material.dart';

class ExerciseRadioScreen extends StatefulWidget {
  const ExerciseRadioScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseRadioScreen> createState() => _ExerciseRadioScreenState();
}

class _ExerciseRadioScreenState extends State<ExerciseRadioScreen> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: 16
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Radio<String>(
                  value: 'Pria',
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                title: Text('Pria'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Wanita',
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                title: Text('Wanita'),
              ),
            ],
          ),
        )
    );
  }
}
