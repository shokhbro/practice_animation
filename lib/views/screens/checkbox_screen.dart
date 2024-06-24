import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice_animation/views/screens/online_market_screen.dart';

class CheckBoxMode extends StatefulWidget {
  const CheckBoxMode({super.key});

  @override
  State<CheckBoxMode> createState() => _CheckBoxModeState();
}

class _CheckBoxModeState extends State<CheckBoxMode> {
  bool onCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onCheck ? Colors.black : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CheckBox Mode",
          style: TextStyle(fontFamily: 'Lato'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return const OnlineMarketScreen();
              }));
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Stack(
        children: [
          onCheck
              ? Positioned.fill(
                  child: Image.asset(
                    "assets/images/airplane2.gif",
                    fit: BoxFit.cover,
                  ),
                )
              : Positioned.fill(
                  child: Image.asset(
                    "assets/images/airplane.gif",
                    fit: BoxFit.cover,
                  ),
                ),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 170,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: onCheck ? Colors.blue[900] : Colors.blue[100],
              ),
              child: AnimatedAlign(
                alignment:
                    onCheck ? Alignment.centerRight : Alignment.centerLeft,
                duration: const Duration(milliseconds: 300),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onCheck = !onCheck;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          left: onCheck ? 200 : 18,
                          top: 20,
                          duration: const Duration(milliseconds: 500),
                          child: Transform.rotate(
                            angle: 90 * pi / 180,
                            child: const Icon(
                              Icons.airplanemode_on,
                              size: 60,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          left: onCheck ? 20 : -200,
                          top: 20,
                          duration: const Duration(milliseconds: 500),
                          child: Transform.rotate(
                            angle: 90 * pi / 180,
                            child: const Icon(
                              Icons.airplanemode_on,
                              color: Colors.black,
                              size: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
