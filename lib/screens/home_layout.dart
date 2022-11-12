import 'package:e_commerce/screens/details_screeen.dart';
import 'package:flutter/material.dart';

import '../models/item_model_cat.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cat.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("Eslam Gamal",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  accountEmail: Text("elkurdieslam@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/eslam.jpg")),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: const Text("My products"),
                    leading: const Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by Islam Gamal © 2022",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
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
                      icon: const Icon(Icons.add_shopping_cart)),
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
      body: Padding(
        padding:  EdgeInsets.all(13.0),
        child: GridView.builder(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                          product: items[index]
                      ),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    trailing: IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon:const Icon(Icons.add)),
                    leading: Text(
                      "${items[index].price}",
                    ),
                    title: const Text(
                      "Cat",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath)),
                    ),
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
