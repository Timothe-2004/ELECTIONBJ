import 'package:flutter/material.dart';

class Inputwidget extends StatelessWidget {
  String? name;
  Widget? prefixIcon;
  void Function(String)? onChanged;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  EdgeInsetsGeometry? contentPadding; // Ajoutez ce paramètre

  Inputwidget({super.key,required this.name, this.onSaved, this.onChanged,this.validator, this.prefixIcon, this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        label: Text("$name"),
        hintText: '$name',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)),
        prefixIcon: prefixIcon,
        fillColor: Colors.white,
        filled: true,
        contentPadding: contentPadding, // Utilisez le paramètre ici
      ),
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}