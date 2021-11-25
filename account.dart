import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/Splash.dart';
import 'package:superstore/views/checkoutThree.dart';
import 'package:superstore/views/productone.dart';
import 'package:superstore/widgets/navigationdrawer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationDrawerWidgets(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context){
          return GestureDetector(
            onTap: ()=>Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
            ),
          );
        },),
        centerTitle: true,
        title: Text('Account',
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
        child: Column(
          children: [
            //for pic
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/For-Men.jpg')
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jameson Dunn',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('jamesondunn@gmail.com',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            //for list view
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(CustomColor.main).withOpacity(.2),
                        borderRadius: BorderRadius.circular(5)
                      ),
                        child: Icon(Icons.edit, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.location_on_outlined, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Shipping Address"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.favorite_border, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Row(
                      children: [
                        Text("Wishlist"),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                            color: Color(CustomColor.main),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text('New',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white
                          ),
                          ),
                        )
                      ],
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.history, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Order History"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.card_giftcard, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Track Order"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.credit_card, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Cards"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(CustomColor.main).withOpacity(.2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.notifications_none, color: Color(CustomColor.main),size: 18,)
                    ),
                    title: Text("Notifications"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                    contentPadding: EdgeInsets.zero,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => splash()));
                    },
                    child: ListTile(
                      leading: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color(CustomColor.main).withOpacity(.2),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.logout, color: Color(CustomColor.main),size: 18,)
                      ),
                      title: Text("Log Out"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 0,
                      minVerticalPadding: 0,
                    ),
                  ),
                ],
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
              GestureDetector(
                  onTap: ()=>Get.to(ProductOneScreen()),
                  child: Icon(Icons.home_outlined,color: Colors.grey,)),
              GestureDetector(
                  onTap: ()=>Get.to(CheckoutThreeScreen()),
                  child: Icon(Icons.shopping_basket_outlined,color: Colors.grey,)),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.person_outline,color: Color(CustomColor.main),),
                    Text(' ACCOUNT',
                      style: TextStyle(
                          color: Color(CustomColor.main),
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}
