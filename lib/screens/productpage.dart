import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_ui/screens/dummydata.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {

    final pId = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((element) => element['id'] == pId);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CarouselSlider(
                items: List.generate(product['cimgs'].length, (index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(product['cimgs'][index]),
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
                )),
          ),
          SliverPadding(
              padding: const EdgeInsets.all(15.0),
            sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product['name'], style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    const SizedBox(height: 5,),
                    Text(product['price']),
                    const SizedBox(height: 15,),
                    Wrap(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                          ),
                          const SizedBox(width: 15,),
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.lightBlue,
                          ),
                          const SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.purple[300],
                          ),
                        ],
                    ),
                    const SizedBox(height: 15,),
                    Wrap(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )
                          ),
                          child: const Center(child: Text("5")),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child: Text("6")),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child: Text("7")),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child: Text("8")),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: const Center(child: Text("9")),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    // Divider(
                    //   color: Colors.grey[500],
                    // ),
                    const ExpansionTile(
                        title: Text("The Details"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    const ExpansionTile(
                      title: Text("Size & Fit"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    const ExpansionTile(
                      title: Text("Composition & Care"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    const Row(
                      children: [],
                    )
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
