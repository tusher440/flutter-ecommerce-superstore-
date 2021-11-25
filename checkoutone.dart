import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:superstore/controllers/categorycontroller.dart';
import 'package:superstore/customcolor.dart';

import 'checkouttwo.dart';

class CheckoutOneScreen extends StatelessWidget {
  const CheckoutOneScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(CategoryController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 15),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        centerTitle: true,
        title: Text('Checkout',
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //for status change
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color(CustomColor.main),width: 1)
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(CustomColor.main),
                        radius: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(CustomColor.main),width: 1)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(CustomColor.main),width: 1)
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(CustomColor.main),
                        radius: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(CustomColor.main),width: 1)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(CustomColor.grey).withOpacity(.5),width: 1)
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(CustomColor.main),
                        radius: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address'),
                  Text('Payments'),
                  Text('Summary'),
                ],
              ),
              SizedBox(height: 20,),
              Text('Summary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20,),
              //for list views
              Container(
                height: 150,
                child: Obx(()=>ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryWoman.length,
                    itemBuilder: (_,index)=>Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(.5),
                                width: 1
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                              child: Image(image: AssetImage(controller.categoryWoman[index].image))),
                          Text(controller.categoryWoman[index].subTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                          ),
                          ),
                          Text(controller.categoryWoman[index].price,
                          style: TextStyle(
                            color: Color(CustomColor.main),
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                          ),
                          )
                        ],
                      ),
                    )
                )
                ),
              ),
              //for shipping address text
              Divider(color: Colors.grey.withOpacity(.2),thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping Address',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(CustomColor.main),
                    radius: 10,
                    child: Icon(Icons.done,color: Colors.white,size: 15,),
                  )
                ],
              ),
              Text('12, Bay brook, Sharps Rd, Keilor East, Melbourne, Australia',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13
              ),
              ),
              SizedBox(height: 5,),
              Text('Change',
                style: TextStyle(
                    color: Color(CustomColor.main),
                    fontSize: 12,
                  fontWeight: FontWeight.w600
                ),
              ),
              Divider(color: Colors.grey.withOpacity(.2),thickness: 1,height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(CustomColor.main),
                    radius: 10,
                    child: Icon(Icons.done,color: Colors.white,size: 15,),
                  )
                ],
              ),
              //for mastercard
              SizedBox(height: 10,),
              Row(
                children: [
                  Image(image: AssetImage('images/download-removebg-preview.png'),height: 25,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MasterCard',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                      Text('**** **** **** 4543',
                        style: TextStyle(
                            fontSize: 12,color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Text('Change',
                style: TextStyle(
                    color: Color(CustomColor.main),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 15,right: 15,bottom: 20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: (){},
                child: Text('BACK',
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
                    side: BorderSide(color: Color(CustomColor.main),width: 1),
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckoutTwoScreen()));
                  },
                  child: Text('PAY',
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                  ),
                style: ElevatedButton.styleFrom(
                  primary: Color(CustomColor.main),
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
              Icon(Icons.home_outlined,color: Colors.grey),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.shopping_basket_outlined,color: Color(CustomColor.main),),
                    Text(' Cart',
                      style: TextStyle(
                          color: Color(CustomColor.main),
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.person_outline,color: Colors.grey,),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}
