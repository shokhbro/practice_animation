import 'package:flutter/material.dart';

class OnlineMarketScreen extends StatefulWidget {
  const OnlineMarketScreen({super.key});

  @override
  State<OnlineMarketScreen> createState() => _OnlineMarketScreenState();
}

class _OnlineMarketScreenState extends State<OnlineMarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Online Market",
          style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.amber,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
