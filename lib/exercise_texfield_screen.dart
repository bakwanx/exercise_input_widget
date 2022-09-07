import 'package:flutter/material.dart';

class ExerciseTextFieldScreen extends StatefulWidget {
  const ExerciseTextFieldScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseTextFieldScreen> createState() => _ExerciseTextFieldScreenState();
}

class _ExerciseTextFieldScreenState extends State<ExerciseTextFieldScreen> {

  TextEditingController _nameController = TextEditingController();

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
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan namamu",
                    labelText: "Nama"
                  ),
                  controller: _nameController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    var snackBar = SnackBar(
                      content: Text("Halo ${_nameController.text}"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text("Masukkan")
              )
            ],
          ),
        )
    );
  }
}
