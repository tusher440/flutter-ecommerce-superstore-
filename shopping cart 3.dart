import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'checkoutone.dart';

class Cart3 extends StatefulWidget {

  @override
  _Cart3State createState() => _Cart3State();
}

class _Cart3State extends State<Cart3> {

  @override
  Widget build(BuildContext context) {
    //final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        title:  Center(
          child: Text("Tracking Order",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: FaIcon(FontAwesomeIcons.search,color: Colors.grey,size: 20,),
            ),
          ),
        ],
      ),
      body: ListView(
        //physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 40,),
                  child: Text("Order No. #123-456",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("20/18\n10:00 AM",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .2,),
                          Text("20/18\n10:00 AM",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .2,),
                          Text("20/18\n10:00 AM",style: TextStyle(color: Colors.black),),

                          //Text("20/18\n10:00 AM",style: TextStyle(color: Colors.black),),

                        ],
                      ),
                      //SizedBox(width: 5),
                      Column(
                        children: [
                          _buildCustomRadiioButton("Checked"),
                          _buildCustomLine("Checked"),
                          _buildCustomRadiioButton("Checked"),
                          _buildCustomLine("Checked"),
                          _buildCustomRadiioButton("Checked"),
                          _buildCustomLine(""),
                          _buildCustomRadiioButton(""),
                          _buildCustomLine(""),
                          _buildCustomRadiioButton(""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Order Signed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("Melbourne Store",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .1,),
                          Text("Order Processed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text("Melbourne Store",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .2,),
                          Text("Shipped",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text("Melbourne Store",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .2,),
                          Text("Out for delivery",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text("Sydney,AU",style: TextStyle(color: Colors.black),),
                          SizedBox(height: MediaQuery.of(context).size.width * .2,),
                          Text("Delivered",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          Text("NSW,Sydney,AU",style: TextStyle(color: Colors.black),),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                minimumSize:  Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(60.0),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckoutOneScreen()));
              },
              child: Text("CONTINUE SHOPPING",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon((Icons.home_filled), color: Colors.grey,),
              SizedBox(width: 20,),
              Icon(Icons.shopping_cart,
                size: 24,
                color: Colors.redAccent,
              ),
              Text("Cart",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14
                ),
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
  Widget _buildCustomLine(String checked){
    if(checked=="Checked"){
      return Container(
        margin: EdgeInsets.only(
          left: 50,
          //top: 15,
          right: 50,
        ),

        width: 2,
        height:MediaQuery.of(context).size.width * .2,

        color: Color(0xfffb969a),
      );
    }else{
      return Container(
        margin: EdgeInsets.only(
          left: 50,
          //top: 100,
          right: 50,
        ),

        width: 2,
        height:MediaQuery.of(context).size.width * .2,

        color: Colors.black12,
      );
    }

  }
  Widget _buildCustomRadiioButton(String step){
    if(step=="Checked"){
      return InkWell(
        onTap: (){

        },
        child: Container(
          margin: EdgeInsets.only(
            left: 50,
            //top: 100,
            right: 50,
          ),
          width: 30,
          height: 30,
          decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide(
                color: Color(0xfffb969a),
              ),
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Container(
              height: 15,
              width: 15,
              decoration: ShapeDecoration(
                  shape: CircleBorder(
                      side: BorderSide(color: Color(0xfffb969a))),
                  color: Color(0xfffb969a)),
            ),
          ),
        ),
      );
    }
    else{
      return Container(
        margin: EdgeInsets.only(
          left: 50,
          //top: 100,
          right: 50,
        ),
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.black12,
            ),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Container(
            height: 15,
            width: 15,
            decoration: ShapeDecoration(
                shape: CircleBorder(
                    side: BorderSide(color: Colors.white)),
                color: Colors.white),
          ),
        ),
      );
    }
  }
}