import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturantes/core/utils/functions/show_modal_bottom.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 239, 221, 221)),
          suffixIcon: IconButton(
            onPressed: () {
              showModalBottom(context);
            },
            icon: const Icon(Icons.filter_list_alt),
          ),
          prefixIcon: const Icon(CupertinoIcons.search),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(16),
          )),
    );
  }
}
