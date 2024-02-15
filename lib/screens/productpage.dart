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
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined)),
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
                  autoPlayInterval: Duration(seconds: 2),
                  pauseAutoPlayOnTouch: true,
                )),
          ),
          SliverPadding(
              padding: EdgeInsets.all(15.0),
            sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product['name'], style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 5,),
                    Text(product['price']),
                    SizedBox(height: 15,),
                    Wrap(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.lightBlue,
                          ),
                          SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.purple[300],
                          ),
                        ],
                    ),
                    SizedBox(height: 15,),
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
                          child: Center(child: Text("5")),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Center(child: Text("6")),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Center(child: Text("7")),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Center(child: Text("8")),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Center(child: Text("9")),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    // Divider(
                    //   color: Colors.grey[500],
                    // ),
                    ExpansionTile(
                        title: Text("The Details"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Size & Fit"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Composition & Care"),
                      children: [
                        ListTile(
                          title: Text("Green stretch design with twist detailing and round neck. Long sleeves design with mid-lenght dress and straight hem."),
                        )
                      ],
                    ),
                    Row(
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
