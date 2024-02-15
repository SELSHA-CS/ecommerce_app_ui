import 'package:ecommerce_app_ui/screens/checkout.dart';
import 'package:ecommerce_app_ui/screens/dummydata.dart';
import 'package:ecommerce_app_ui/screens/mainpages.dart';
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {

    final cat = 'cart';
    final cart = products.where((product) => product['category'] == cat).toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MainPages())
            );
          }, 
          icon: Icon(Icons.close)
        ),
        title: Center(child: Text("Shopping Bag", style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: cart.map((product) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'productspage', arguments: ['id']);
                },
                child: ListTile(
                  leading: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product['img']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(product['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Size : 8"),
                      Text(product['price']),
                    ],
                  ),
                  trailing: Wrap(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[200],
                        child: Text("-"),
                      ),
                      SizedBox(width: 5,),
                      Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[200],
                        child: Text("+"),
                      ),
                    ],
                  ),
                ),
              )).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CheckOut())
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                child: Text("Checkout", style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ),
        ],
      )
    );
  }
}
