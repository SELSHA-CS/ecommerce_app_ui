import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_ui/screens/dummydata.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final imgs = products.map((product) => product['img']).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: const Center(
              child: Text("Shoes Store", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: List.generate(imgs.length, (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(imgs[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                )), 
                options: CarouselOptions(
                  viewportFraction: 1,
                  initialPage: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  pauseAutoPlayOnTouch: true,
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(15.0),
            sliver: SliverToBoxAdapter(
              child: Text("New Arrivals", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            childAspectRatio: .8,
            children: products.map((product) => InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'productspage', arguments: product['id']);
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          image: DecorationImage(
                            image: AssetImage(product['img']),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                    Text(product['name'], style: const TextStyle(fontWeight: FontWeight.bold),),
                    Text(product['desc']),
                    Text(product['price'])
                  ],
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
