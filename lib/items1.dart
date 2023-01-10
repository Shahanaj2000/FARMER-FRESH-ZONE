import 'package:flutter/material.dart';

class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          /*return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 120,
                //height: MediaQuery.of(context).size.height / 5,
                //width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, 
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
              
            ],
          ); */
          return Stack(
            children: [
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  //height: 100,
                  //width: 120,
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    /*boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ), 
                    ],*/
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(images[index])),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                //left: ,
                child: Container(
                  //height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width * .3,
                  color: Colors.indigo,
                  height: 20,
                  child: Center(
                    child: Text(
                      names[index],
                      style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
