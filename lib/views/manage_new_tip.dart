import 'package:flutter/material.dart';

class ManageTip extends StatefulWidget {
  const ManageTip({super.key});
  @override
  State<ManageTip> createState() => _ManageTipState();
}

class _ManageTipState extends State<ManageTip> {
  final formKey = GlobalKey<FormState>();

  //get the value from the form

  Future validateForm() async {
    if (formKey.currentState!.validate()) {
      print('Valid');
    } else {
      print('Invalid');
    }
  }

  double pourcentage = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add New Tip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the title of the tip';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    hintText: 'Enter the title of the tip',
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the amount of the tip';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Tip Amount',
                    suffixIcon: Icon(Icons.attach_money),
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Tip pourcentage'),
                Row(children: [
                  Expanded(
                    child: Slider(
                        value: pourcentage,
                        min: 0,
                        max: 30,
                        divisions: 30,
                        label: 'Tip percentage',
                        onChanged: (value) {
                          setState(() {
                            pourcentage = value;
                          });
                        }),
                  ),
                  Text(
                    '$pourcentage%',
                    style: const TextStyle(fontSize: 20),
                  )
                ]),
                const SizedBox(height: 15),
                const Text('Tip Amount:'),
                const SizedBox(height: 15),
                const Text('Total Amount to bill:'),
                const SizedBox(height: 15),
                const Text("Previous Tip Amount:"),
                const SizedBox(height: 35),
                Center(
                  child: FilledButton(
                    onPressed: () {
                      validateForm();
                    },
                    child: const Text('Save Tip'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
