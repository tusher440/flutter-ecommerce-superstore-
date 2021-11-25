import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/blog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'contactsone.dart';


class Setting extends StatefulWidget {
  const Setting({Key key}) : super(key: key);


  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  // AlignmentGeometry _alignment = Alignment.topRight;
  //
  // void _changeAlignment() {
  //   setState(() {
  //     _alignment = _alignment == Alignment.topLeft ? Alignment.bottomLeft : Alignment.topRight;
  //   });
  // }
  var value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        title: Center(
          child: Text(
            "Settings",
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your App settings",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You'll always be my favourite notification\nWe can be happy with less",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    SizedBox(
                      height: 35,
                      width: 60,
                      child: LiteRollingSwitch(
                      //initial value
                      value: false,
                      textOn: 'on',
                      textOff: 'off',
                      // colorOn: Colors.greenAccent[200],
                      // colorOff: Colors.redAccent[200],
                      iconOn: Icons.done,
                      iconOff: Icons.remove_circle_outline,
                      textSize: 12.0,
                        onChanged: (bool state) {
                        //Use it to manage the different states
                        print('Current State of SWITCH IS: $state');
                      },
                     ),
                    ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popups",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "We can be happy with less and miserable with more\n You'll always be my favourite notification",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                      SizedBox(
                        height: 35,
                        width: 60,
                        child: LiteRollingSwitch(
                          //initial value
                          value: false,
                          textOn: 'on',
                          textOff: 'off',
                          // colorOn: Colors.white,
                          // colorOff: Colors.red,
                          iconOn: Icons.done,
                          iconOff: Icons.remove_circle_outline,
                          textSize: 12.0,
                          onChanged: (bool state) {
                            //Use it to manage the different states
                            print('Current State of SWITCH IS: $state');
                          },
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50,),
                  Text(
                    "Order History",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "We can be happy with less and miserable with more\n You'll always be my favourite notification",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                      SizedBox(
                        height: 35,
                        width: 60,
                        child: LiteRollingSwitch(
                          //initial value
                          value: false,
                          textOn: 'on',
                          textOff: 'off',
                          // colorOn: Colors.greenAccent[200],
                          // colorOff: Colors.redAccent[200],
                          iconOn: Icons.done,
                          iconOff: Icons.remove_circle_outline,
                          textSize: 12.0,
                          onChanged: (bool state) {
                            //Use it to manage the different states
                            print('Current State of SWITCH IS: $state');
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      minimumSize:  Size(400, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(60.0),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactOneScreen()));
                    },
                    child: Text("UPDATE SETTINGS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width*.13,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50), topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                (Icons.home_filled),
                color: Colors.grey,
              ),

              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.shopping_cart,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.people,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 24,
                    color: Colors.redAccent,
                  ),
                  SizedBox(width: 5,),
                  Text("Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

