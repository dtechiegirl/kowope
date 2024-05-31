import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({

    super.key, required this.label, required this.onChanged,  this.textInputType, this.isPassword = false,
  });

  final String label;
  final Function(String value) onChanged;
  final TextInputType? textInputType;
  final bool  isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 50,
      child: TextFormField(

        decoration: InputDecoration(
          labelText: label,


          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,

          ),

        ),
        keyboardType: textInputType,
        onChanged: onChanged,
        obscureText: isPassword,

        // onChanged: (value){},
      ),
    );
  }
}