
import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/shared/app_bar/app_bar.dart';
import 'package:e_commerce/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

   @override
    Widget build(BuildContext context) {
      final cart = Provider.of<Cart>(context);

      return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarGreen,
          title:const Text("checkout screen"),
          actions:const [ProductsAndPrice()],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 550,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: cart.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title: Text(cart.selectedProducts[index].name),
                          subtitle: Text(
                              "${cart.selectedProducts[index].price}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                cart.selectedProducts[index].imgPath),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                cart.delete(cart.selectedProducts[index]);
                              },
                              icon: const Icon(Icons.remove)),
                        ),
                      );
                    }),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNpink),
                padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Pay \$${cart.price}",
                style: const TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      );
  }
}
