import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/Search%20List.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/views/Search%20List.dart';

import 'Discover.dart';

// ignore: camel_case_types
class filter extends StatefulWidget {
  const filter({Key key}) : super(key: key);

  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {

  RangeValues _currentRangeValues = const RangeValues(0, 100);

  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }


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
          child: Text("Filter",
           style: TextStyle(
             color: Colors.red,
             fontSize: 22,
           ),
              ),
        ),
        actions: [
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => search123()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => search123()));
                    },
                    child: Icon(Icons.search,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
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
                  Text("Women",
                    style: TextStyle(
                      color: Color(0xffe2e2e2),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Men",
                    style: TextStyle(
                      color: Color(0xffe2e2e2),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Best Seller",
                    style: TextStyle(
                      color: Color(0xffe2e2e2),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Popularity",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text("No setting",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Icon(Icons.keyboard_arrow_down_sharp,
                      size: 20,
                      color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Brands",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Aymani, Addidas, Gucci",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Price",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Icon(Icons.keyboard_arrow_up_sharp,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RangeSlider(
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                      activeColor: Colors.red,
                      inactiveColor: Colors.red,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Color",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Black, Red, Grey, White",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rating",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("4 Star",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shipped from",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("No setting",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Icon(Icons.keyboard_arrow_down_sharp,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('CLEAR',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('APPLY',
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            side: BorderSide(color: Colors.red, width: 1),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                      ),
                    )
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
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon((Icons.home_filled),color: Colors.red,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => discover()));
                },
                child: Text("Home",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14
                  ),
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
