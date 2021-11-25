import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/producttwo.dart';

class ProductOneScreen extends StatefulWidget {
  const ProductOneScreen({Key key}) : super(key: key);

  @override
  _ProductOneScreenState createState() => _ProductOneScreenState();
}

class _ProductOneScreenState extends State<ProductOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage('images/pexels-evg-culture-1187954.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.heart,color: Colors.white.withOpacity(.8),size: 20,),
                      ],
                    ),
                  ),
                  //for sized and color
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                            SizedBox(height: 10,),
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
                            SizedBox(height: 10,),
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
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(.5),
                                  width: 1
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('L',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(.5)
                              ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 1
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('M',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white.withOpacity(.5),
                                      width: 1
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('S',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white.withOpacity(.5)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //for text
                  Column(
                    children: [
                      Text("Gucci Sunglasses",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      ),
                      Text("\$45",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 30,)
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("If you're offered a seat on a rocket ship,",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),
                  ),
                  Text("don't ask what seat! Just get on.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text('ADD TO CART',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(CustomColor.main),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  elevation: 0,
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25)
              ),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Color(0xff9499B4),
              child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white,),
                  onPressed: (){}
              ),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Color(CustomColor.main),
              child: IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductTwoScreen()));
                  },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              border: Border.all(color: Color(CustomColor.main)),
              color: Colors.white
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.home_outlined,color: Color(CustomColor.main),),
                    Text('HOME',
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
