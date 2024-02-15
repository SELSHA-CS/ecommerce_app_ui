import 'package:ecommerce_app_ui/screens/dummydata.dart';
import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {

    final String ctgry = 'favorite';
    final fav = products.where((product) => product['category'] == ctgry).toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favorites", style: TextStyle(fontWeight: FontWeight.bold),)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .9,
        children: fav.map((product) => InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'productspage', arguments: [product['id']]);
          },
          child: Column(
            children: [
              Card(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(product['img']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(product['name'], style: TextStyle(fontWeight: FontWeight.bold),),
              Text(product['price'], style: TextStyle(color: Colors.grey),)
            ],
          ),
        )).toList(),
      ),
    );
  }
}
