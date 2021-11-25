import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/collection_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'collection_page.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class collection extends StatefulWidget {
  const collection({Key key}) : super(key: key);

  @override
  _collectionState createState() => _collectionState();
}

class _collectionState extends State<collection> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        title:  Center(
          child: Text("Collection",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search,
              size: 25,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 55,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  bottom: 15,
                  child: Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                  ),
                ),
                Positioned(
                  left: 90,
                  bottom: 30,
                  child: Container(
                    height: 300,
                    width: 210,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/fashion.jpeg"),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 45,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Women",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Beleive in yourse if, take on your chairenges",
                              style: TextStyle(
                                color: Color(0xffe1dfe3),
                                fontSize: 12,
                              ),
                            ),
                            Text("dg within yourself to conquer fears",
                              style: TextStyle(
                                color: Color(0xffe1dfe3),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.red,size: 10,),
                                Icon(Icons.circle,color: Colors.grey,size: 10,),
                                Icon(Icons.circle,color: Colors.grey,size: 10,),
                                Icon(Icons.circle,color: Colors.grey,size: 10,),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                    primary: Colors.blueGrey,
                                  ),
                                  child: Icon(Icons.arrow_back, size: 20, color: Colors.white,),
                                  onPressed: () {},
                                ),

                                SizedBox(width: 5,),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeCollection()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                    primary: Colors.red,
                                  ),
                                  child: Icon(Icons.arrow_forward, size: 20, color: Colors.white,),

                                ),

                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon((Icons.home_filled),color: Colors.red,),
              Text("Home",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14
                ),
              ),
              SizedBox(width: 20,),
              Icon(Icons.shopping_cart,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(width: 20,),
              Icon(Icons.people,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(width: 20,),
              Icon(Icons.settings,
                size: 24,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
