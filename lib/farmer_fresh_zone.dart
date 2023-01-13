import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone/fruits.dart';
import 'package:farmers_fresh_zone/items1.dart';
import 'package:flutter/material.dart';

List<String> carouselimages = [
  "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
  "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
  "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
];

class FarmersFreshZone extends StatelessWidget {
  const FarmersFreshZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            floating: true,
            pinned: false,
            actions: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on_outlined),
                ),
              ),
              //Padding(padding: padding)
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Center(
                  child: Text(
                    "Calicut",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
            //! Bottom App Bar
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search for vegitables and fruits..'),
                ),
              ),
            ),
          ),
          //! Categories
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 20,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "VEGETABLES",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.green,
                              //backgroundColor: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 20,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "FRUITS",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.green,
                              //backgroundColor: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 20,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "EXOTIC",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.green,
                              //backgroundColor: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 20,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "FRESH CUTS",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.green,
                              //backgroundColor: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //! Scrollable Image

                CarouselSlider(
                  items: [
                    Container(
                      child: Image(
                        //width: double.infinity,
                        //height: double.infinity,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 1,
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    Container(
                      child: Image(
                        // width: double.infinity,
                        // height: double.infinity,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 1,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/718742/pexels-photo-718742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    Container(
                      child: Image(
                        // width: double.infinity,
                        // height: double.infinity,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 1,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1482803/pexels-photo-1482803.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    )
                  ],
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 1.5,
                    //viewportFraction: 0.2,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 3),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    //enlargeCenterPage: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.timer),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "30 MIN POLICY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.camera_front_outlined),
                            SizedBox(
                              height: 10,
                            ),
                            Text("TRACEABILITY",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.home_work),
                            SizedBox(
                              height: 10,
                            ),
                            Text("LOCAL SOURCING",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //! Items
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //! List the items
                VegGrid(),
                const SizedBox(
                  height: 10,
                ),

                //! Adds
                CarouselSlider(
                  items: [
                    Card(
                      color: Colors.red,
                      child: Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                  options: CarouselOptions(
                    height: 150,
                    //aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ),

          //! 
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Best Selling Products",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Fruits()
                  
                
            
            ]),
          )
        ],
      ),
    );
  }
}
