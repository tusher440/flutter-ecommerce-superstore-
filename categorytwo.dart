import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/Splash.dart';
import 'package:superstore/views/account.dart';
import 'package:superstore/views/collection_page.dart';
import 'package:superstore/views/producttwo.dart';
import 'categorythree.dart';

class CategoryTwoScreen extends StatelessWidget {
  const CategoryTwoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 15),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        centerTitle: true,
        title: Text('Category',
          style: TextStyle(
              color: Color(CustomColor.main),
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 15),
            child: FaIcon(FontAwesomeIcons.search,color: Colors.grey,size: 20,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 450,),
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  image: DecorationImage(
                    image: AssetImage("images/For-Men.jpg"),
                    fit: BoxFit.fill,
                  ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text('Kids',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                  Text('50 items',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 300),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("images/For-Men.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Trends',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22
                    ),
                  ),
                  Text('50 items',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 150),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("images/Image.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryThreeScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Women',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22
                      ),
                    ),
                    Text('150 items',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 160,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("images/For-Men.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Men',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22
                  ),
                  ),
                  Text('100 items',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(Icons.add,color: Colors.black,),
              onPressed: (){},
          ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              //border: Border.all(color: Color(CustomColor.main)),
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
              GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => splash())),
                  child: Icon(Icons.shopping_basket_outlined,color: Colors.grey,)),
              GestureDetector(
                  onTap: ()=>Get.to(splash()),
                  child: Icon(Icons.person_outline,color: Colors.grey,)),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}

