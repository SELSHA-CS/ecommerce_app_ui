import 'package:ecommerce_app_ui/screens/bagpage.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const BagPage())
            );
          }, 
          icon: const Icon(Icons.arrow_forward_ios)
        ),
        title: const Center(child: Text("Checkout", style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deliver address", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("San Francisco, 94109"),
                    Text("750 Sutter Street, Apt 3"),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deliver method", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("2 pieces"),
                    Text("Free Delivery"),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("511 Grant Avenue, Flat 23B, San Francisco"),
                    Text("Visa(****2319)"),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Promo Code"),
                    Icon(Icons.done)
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal"),
                Text("\$857"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery"),
                Text("\$0"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Taxes"),
                Text("\$73.92"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total"),
                Text("\$930.92"),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                child: const Text("Place Order", style: TextStyle(color: Colors.white),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}