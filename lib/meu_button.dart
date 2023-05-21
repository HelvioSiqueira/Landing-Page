import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton(this.textButton, {super.key});

  String textButton;

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.black12))),
          elevation: const MaterialStatePropertyAll(5.0),
          minimumSize: const MaterialStatePropertyAll<Size>(Size(150, 0)),
          backgroundColor: const MaterialStatePropertyAll(Colors.yellowAccent)),
      onPressed: null,
      child: Text(
        textButton,
        style:
        const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ));
}