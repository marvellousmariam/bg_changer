import 'package:flutter/material.dart';

class theButton extends StatelessWidget {
  theButton({super.key, required this.changeColor, required this.data});

  void Function() changeColor;
  String data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeColor,
      style:
          ElevatedButton.styleFrom(elevation: 3, backgroundColor: Colors.white),
      child: Text(
        data,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
