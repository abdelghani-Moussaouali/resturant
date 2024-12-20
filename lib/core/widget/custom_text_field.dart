import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final dynamic controller;
  final String hintText;
  final IconData icon;
  final bool password;
  bool obscureText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  CustomTextField({
    super.key,
    required this.icon,
    required this.password,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.validator,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        obscureText: widget.obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey[500]),
            hintText: widget.hintText,
            prefixIcon: Icon(widget.icon),
            suffixIcon: (widget.password == true)
                ? (widget.obscureText == true)
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscureText = false;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.eye_slash_fill,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscureText = true;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.eye_fill,
                        ),
                      )
                : null,
            fillColor: Colors.grey.shade200,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 10, 8, 8))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.green))),
      ),
    );
  }
}
