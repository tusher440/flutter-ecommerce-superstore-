import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/views/productone.dart';

import 'Collection.dart';

class CollectionWomen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/alexi.jpg"),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                          child: FaIcon(FontAwesomeIcons.stream,color: Colors.white,size: 20,),
                        ),
                        Text(
                          "Women",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Up to 20% off",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                          ),
                        ),
                        Text(
                          "Women Collection",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(
//          border: Border.all(
            color: Colors.white,
//          ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Hats Collection",
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "20% off",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      fontSize: 8,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              //color: Colors.yellow,
//                              border: Border.all(
//                                color: Colors.red,
//                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductOneScreen()));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("images/alexi.jpg"), fit: BoxFit.cover
                                          ),
//                                        color: Colors.yellow,
//                                        border: Border.all(
//                                          color: Colors.red,
//                                        ),
                                          borderRadius: BorderRadius.only(
                                            //topRight: Radius.circular(30),
                                            topLeft: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            //: Radius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
//                                        color: Colors.yellow,
//                                        border: Border.all(
//                                          color: Colors.red,
//                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          //topLeft: Radius.circular(30),
                                          //bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("images/alexi.jpg"), fit: BoxFit.cover
                                                  ),
//                                                  color: Colors.yellow,
//                                                  border: Border.all(
//                                                    color: Colors.red,
//                                                  ),
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(30),
                                                    //topLeft: Radius.circular(30),
                                                    //bottomLeft: Radius.circular(30),
                                                    //: Radius.circular(30),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("images/alexi.jpg"), fit: BoxFit.cover
                                                  ),
                                                  //color: Colors.yellow,
//                                                  border: Border.all(
//                                                    color: Colors.red,
//                                                  ),
                                                  borderRadius: BorderRadius.only(
                                                    //topRight: Radius.circular(30),
                                                    //topLeft: Radius.circular(30),
                                                    //bottomLeft: Radius.circular(30),
                                                    bottomRight: Radius.circular(30),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          (Icons.home_outlined),
                          color: Colors.red,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> collection()));
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 24,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.person_outline,
                          size: 24,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.settings_outlined,
                          size: 24,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
