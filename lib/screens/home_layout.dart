import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Home"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle),
                    child: const Text(
                      "8",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart)
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ],
          )
        ],
      ),
    );
  }
}
