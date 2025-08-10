import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  // ID route supaya bisa dipanggil di Navigator
  static const id = "/InputWidget";

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Term & Condition"),
        backgroundColor: isCheckSwitch ? Colors.black : Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(20), children: <Widget>[
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: isCheckSwitch ? Colors.black : Colors.white,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "CheckBox",
                  style: TextStyle(
                    color: isCheckSwitch ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "bebe",
                  style: TextStyle(
                    color: isCheckSwitch ? Colors.white : Colors.black,
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.red,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {
                            isCheck = value ?? false;
                          });
                        },
                      ),
                      Text(
                        isCheck ? "Setuju" : "Tidak Setuju",
                        style: TextStyle(
                          color: isCheckSwitch ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
