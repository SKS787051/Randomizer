import 'package:flutter/material.dart';
import 'package:foodappapi/randamizer_page.dart';
import 'package:foodappapi/range_selector_form.dart';

class RangeSeclatorPage extends StatefulWidget {
  const RangeSeclatorPage({super.key});
  @override
  State<RangeSeclatorPage> createState() => _RangeSeclatorPageState();
}

class _RangeSeclatorPageState extends State<RangeSeclatorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(
            child: Text(
          "Select Range",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: RangeSelectorForm(
          formKey: formKey,
          minintvalueSetter: (value) => _min = value,
          maxintvalueSetter: (value) => _max = value,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RendomizerView(
                      min: _min,
                      max: _max,
                    )));
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
