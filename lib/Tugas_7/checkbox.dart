import 'package:flutter/material.dart';

class Checkbox extends StatefulWidget {
  const Checkbox({super.key});
  static const id = "/Check";

  @override
  State<Checkbox> createState() => _CheckboxState();
}

class _CheckboxState extends State<Checkbox> {
  bool isCheckSwitch = false;
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
