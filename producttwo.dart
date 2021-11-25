import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/productthree.dart';

class ProductTwoScreen extends StatelessWidget {
  const ProductTwoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          //padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pexels-jasmin-chew-5990174.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //for appbar
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(FontAwesomeIcons.stream,size: 20,color: Colors.white,),
                    Text('Women',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    FaIcon(FontAwesomeIcons.heart,color: Colors.white.withOpacity(.8),size: 20,),
                  ],
                ),
              ),
              //for middel
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lady Hat',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 22
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('I would hope that would\nnot have a single bit of\ntalent left.',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 12
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('\$45',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 10,),
                    //for color
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              ),
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              ),
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    //for buy now
                    Container(
                      width: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('BUY NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                    icon: Icon(Icons.shopping_bag, color: Color(CustomColor.main),), onPressed: (){}
                                ),
                              )
                            ],
                          ),
                          Divider(color: Colors.white,thickness: 2,height: 0,endIndent: 25,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //for last
              Spacer(flex: 3,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white,width: 1),
                            color: Colors.white
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white,width: 1),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white,width: 1),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white,width: 1),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductThreeScreen()));
                              },
                              child: Text("NEXT",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward,size: 18,)
                          ],
                        ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      primary: Color(CustomColor.main),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                    border: Border.all(color: Colors.white.withOpacity(.5)),
                    color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.home_outlined,color: Colors.white,),
                          Text(' HOME',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.shopping_basket_outlined,color: Colors.white.withOpacity(.6)),
                    Icon(Icons.person_outline,color: Colors.white.withOpacity(.6)),
                    Icon(Icons.settings,color: Colors.white.withOpacity(.6)),
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
