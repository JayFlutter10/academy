import 'package:flutter/material.dart';

class TextFieldCustom  extends StatelessWidget {
  final TextEditingController? controller;
  const TextFieldCustom ({
    this.controller,
    super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search,),
        hintText: 'Search by name',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
