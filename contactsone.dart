import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';

import 'contractstwo.dart';

class ContactOneScreen extends StatelessWidget {
  const ContactOneScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/GoogleMapTA (1).jpg'),
                fit: BoxFit.cover,
              ),
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
                      FaIcon(FontAwesomeIcons.stream,size: 20,color: Colors.grey,),
                      Text('Contacts',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Text('Get in Touch',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(height: 15,),
                      Text("The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15,),
                      Text('Where We Are',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text('Address: 123 Sharp Rd,\nMelbourne, AU\n+123 456 78\ninfo@superstore.com',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/5,)
                    ],
                  ),
                )
              ],
            ),
          )
      ),
      bottomSheet: Container(
        width: double.infinity,
        color: Colors.white,
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Contractstwoscreen()));
            },
            child: Text('LOCATE A STORE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          style: ElevatedButton.styleFrom(
            primary: Color(CustomColor.main),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            ),
            padding: EdgeInsets.symmetric(vertical: 15)
          ),
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
