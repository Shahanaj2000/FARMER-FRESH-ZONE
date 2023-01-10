import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone/items1.dart';
import 'package:flutter/material.dart';

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
                    /*Container(
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(8),
                        image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                    ), */
                    Container(
                      child:  Image(
                        //width: double.infinity,
                        //height: double.infinity,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height *1,
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    Container(
                      child:  Image(
                        // width: double.infinity,
                        // height: double.infinity,
                        width: MediaQuery.of(context).size.width *1,
                        height: MediaQuery.of(context).size.height *1,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/718742/pexels-photo-718742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    Container(
                      child:  Image(
                        // width: double.infinity,
                        // height: double.infinity,
                        width: MediaQuery.of(context).size.width*1,
                        height: MediaQuery.of(context).size.height*1,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1482803/pexels-photo-1482803.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    )
                  ],
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 12 / 5,
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
                  padding: EdgeInsets.all(8.0),
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
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}


