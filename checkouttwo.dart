import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/checkoutThree.dart';

class CheckoutTwoScreen extends StatelessWidget {
  const CheckoutTwoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
          padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/Capture-removebg-preview.png')),
              SizedBox(height: 20,),
              Text('Order Accepted',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 10,),
              Text('Your Order No. #123-456',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),
              ),
              Text('has been placed',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckoutThreeScreen()));
                    },
                    child: Text('TRACK ORDER'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(CustomColor.main),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
              )
            ],
          ),
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
