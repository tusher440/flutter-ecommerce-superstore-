import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'account.dart';

class Contractstwoscreen extends StatefulWidget {
  const Contractstwoscreen({Key key}) : super(key: key);

  @override
  _ContractstwoscreenState createState() => _ContractstwoscreenState();
}

class _ContractstwoscreenState extends State<Contractstwoscreen> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
       width: size.width,
       decoration: BoxDecoration(
         color: Colors.transparent,
         image: DecorationImage(
           image: AssetImage("images/For-Men.jpg"),
           fit: BoxFit.cover,
         ),
       ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  // color: Colors.red,
                  height: size.height* .8,
                  width: size.width* .8,
                  child: Stack(
                    children: [
                  Container(
                    height: size.height* .3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/For-Men.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(//
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                      Container(
                        alignment: Alignment.center,
                        height: size.height* .2,
                        //width: size.width* .8,
                        decoration: BoxDecoration(

                          color: Colors.red.withOpacity(0.5),
                          borderRadius: BorderRadius.only(//
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                          Container(
                          width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/For-Men.jpg")
                                )
                            ),
                           ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                                    child: FaIcon(FontAwesomeIcons.stream,color: Colors.white,size: 20,),
                                  ),
                             ],
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
                                },
                                child: Text("Jameeson Dunn",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                              Text("@jameesondunn",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: size.height* .6,
                          //width: size.width* .8,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.home_outlined, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Home",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.card_travel, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Catalog",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.category, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Category",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.card_travel_sharp, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Collection",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.show_chart, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Products",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.favorite_border, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text("Wishlist",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text("About Us",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text("Log Out",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                (Icons.home_filled),
                color: Colors.red,
              ),
              Text(
                "Home",
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.shopping_cart,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.people,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 24,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
