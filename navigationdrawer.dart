import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superstore/customcolor.dart';

class NavigationDrawerWidgets extends StatelessWidget {
  const NavigationDrawerWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.2,
      width: MediaQuery.of(context).size.width/1.25,
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(50),
          color: Colors.transparent
      ),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              color: Color(CustomColor.main).withOpacity(.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/pexels-gabriel-antonio-2065805.jpg')
                ),
                Text('Sarah fernandez',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
                Text('fernandez@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              color: Color(CustomColor.main),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined,color: Colors.white.withOpacity(.5),),
                  title: Text('Home',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  leading: Icon(Icons.card_giftcard,color: Colors.white.withOpacity(.5),),
                  title: Text('Catalog',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  leading: Icon(Icons.category_outlined,color: Colors.white.withOpacity(.5),),
                  title: Text('Category',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  leading: Icon(Icons.flip,color: Colors.white.withOpacity(.5),),
                  title: Text('Products',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border,color: Colors.white.withOpacity(.5),),
                  title: Text('Wishlist',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  title: Text('About Us',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.5)
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
                ListTile(
                  title: Text('Log Out',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.5)
                    ),),
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
