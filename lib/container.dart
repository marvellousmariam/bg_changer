import 'package:bg_changer/theButton.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  Color theColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 400,
        color: theColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Background Color Changer",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                theButton(
                    changeColor: () {
                      setState(() {
                        theColor = Colors.red;
                      });
                    },
                    data: "Red"),
                const SizedBox(
                  width: 10,
                ),
                theButton(
                    changeColor: () {
                      setState(() {
                        theColor = Colors.blue;
                      });
                    },
                    data: "Blue"),
                const SizedBox(
                  width: 10,
                ),
                theButton(
                    changeColor: () {
                      setState(() {
                        theColor = Colors.deepPurpleAccent;
                      });
                    },
                    data: "Purple"),
                const SizedBox(
                  width: 5,
                ),
                theButton(
                    changeColor: () {
                      setState(() {
                        theColor = Colors.green;
                      });
                    },
                    data: "Green"),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
