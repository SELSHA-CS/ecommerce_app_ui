import 'package:ecommerce_app_ui/screens/dummydata.dart';
import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        childAspectRatio: 0.8,
        children: products.map((e) => InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'productspage', arguments: e['id']);
          },
          child: Card(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage(e['img']),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                Text(e['name']),
                Text(e['desc']),
                Text(e['price']),
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}
