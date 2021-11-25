import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/Filter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/views/Filter.dart';
import 'package:superstore/views/Search%20List.dart';

import 'categoryone.dart';

class discover extends StatefulWidget {
  const discover({Key key}) : super(key: key);

  @override
  _discoverState createState() => _discoverState();
}

class _discoverState extends State<discover> {
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
          child: Text("Discover",
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
            ),
          ),
        ),
        actions: [
          Icon(Icons.search,
          size: 25,
          color: Colors.grey,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => search123()));
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => filter()));
                    },
                    child: Icon(Icons.filter_list_alt,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryOneScreen()));
                    },
                    child: Text("Women",
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 18,
                     ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Men",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Best Seller",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("White Top",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                              ],),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("White Top",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("Cool Hat",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
                          ),
                          Expanded(
                            flex:3,
                             child: Container(
                              color: Colors.black26,
                               height: 20,
                                width: MediaQuery.of(context).size.width,
                                 alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("Black Jeans",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
                          ),
                          Expanded(
                          flex:3,
                           child: Container(
                            color: Colors.black26,
                             height: 20,
                             width: MediaQuery.of(context).size.width,
                             alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("White Dress",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
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
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("Dark Coat",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("White Top",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*.43,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("images/fashion-13.jpg",),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("White Top",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                        ),
                                      ),
                                      Text("\$15",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:3,
                            child: Container(
                            color: Colors.black26,
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.card_travel, size: 14, color: Colors.red,),
                                      Image(image: AssetImage("images/Love.png"),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
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
