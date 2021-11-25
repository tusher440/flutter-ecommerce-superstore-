import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/shopping%20cart1.dart';

class ProductThreeScreen extends StatelessWidget {
  const ProductThreeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pexels-gabriel-antonio-2065805.jpg'),
              fit: BoxFit.cover,
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
              //for Text
              SizedBox(height: MediaQuery.of(context).size.height/9,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('Gucci Sunglasses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('\$45',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
              ),
              SizedBox(height: 30,),
              //for container
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      //for add to cart
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(FontAwesomeIcons.minus),
                          ElevatedButton(
                              onPressed: (){},
                              child: Text('ADD TO CART',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(CustomColor.main),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              elevation: 0
                            ),
                          ),
                          FaIcon(FontAwesomeIcons.plus,color: Color(CustomColor.main),),
                        ],
                      ),
                      //for tabbar
                      DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              TabBar(
                                labelColor: Color(CustomColor.main),
                                  unselectedLabelColor: Colors.grey,
                                  indicator: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  labelPadding: EdgeInsets.symmetric(vertical: 4),
                                  indicatorColor: Colors.grey,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  tabs: [
                                    Text('      DETAILS      '),
                                    Text('      REVIEWS      ',),
                                  ]
                              ),
                              SizedBox(height: 15,),
                              //for tabbar view
                              Container(
                                height: MediaQuery.of(context).size.height/3,
                                child: TabBarView(
                                    children: [
                                      //for details
                                      ListView(
                                        children: [
                                          Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English.',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey
                                          ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              //for size& color
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    border: Border.all(color: Colors.grey.withOpacity(.5),width: 1)
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('Size'),
                                                      Text('M',
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                      ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20,),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    border: Border.all(color: Colors.grey.withOpacity(.5),width: 1)
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('Colour'),
                                                      Container(
                                                        height: 20,
                                                        width: 20,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          color: Colors.yellow
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      //for reviews
                                      ListView(
                                        children: [
                                          Text('data2')
                                        ],
                                      ),
                                    ]
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color(CustomColor.main),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart1()));
              },
              child: Text('CONTINUE SHOPPING',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13
              ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(CustomColor.main),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: Colors.white
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.home_outlined,color: Color(CustomColor.main),),
                    Text(' HOME',
                      style: TextStyle(
                          color: Color(CustomColor.main),
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.shopping_basket_outlined,color: Colors.grey,),
              Icon(Icons.person_outline,color: Colors.grey,),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}
