import 'package:e_commerce/models/item_model_cat.dart';
import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/screens/details_screeen.dart';
import 'package:e_commerce/shared/app_bar/app_bar.dart';
import 'package:e_commerce/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



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
                      backgroundImage: AssetImage("assets/images/kit1.jpg")),
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
          actions:const [
            ProductsAndPrice(),
          ],
          backgroundColor: appbarGreen,
          title: const Text("Home"),
        ),
      body: Padding(
        padding:const EdgeInsets.all(13.0),
        child: GridView.builder(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
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
                    trailing:
                    Consumer<Cart>(builder: ((context, Carttt, child) {
                      return IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            Carttt.add(items[index]);
                          },
                          icon: Icon(Icons.add));
                    })),
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
