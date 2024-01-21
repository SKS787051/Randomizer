import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    super.key,
    required this.formKey,
    required this.minintvalueSetter,
    required this.maxintvalueSetter,
  });

  final GlobalKey<FormState> formKey;
  final IntValueSetter minintvalueSetter;
  final IntValueSetter maxintvalueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RangeSelectorTextFeild(
            labelText: 'Minimum',
            intvalueSetter: minintvalueSetter,
          ),
          const SizedBox(
            height: 30,
          ),
          RangeSelectorTextFeild(
            labelText: 'Maximum',
            intvalueSetter: maxintvalueSetter,
          ),
        ],
      ),
    );
  }
}

class RangeSelectorTextFeild extends StatelessWidget {
  const RangeSelectorTextFeild({
    super.key,
    required this.labelText,
    required this.intvalueSetter,
  });
  final labelText;
  final IntValueSetter intvalueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'must be an integer';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intvalueSetter(int.parse(newValue ?? '')),
    );
  }
}
