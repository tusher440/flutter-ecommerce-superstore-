import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/collection_women.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Collection.dart';
import 'collection_women.dart';
// import 'package:uitusharvaitask/collection_women.dart';

class HomeCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
//        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("images/couple3.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
//          decoration: BoxDecoration(
//            color: Colors.white,
//            image: DecorationImage(
//              image: AssetImage("images/man1.jpg"),
//              fit: BoxFit.cover
//            ),
//          ),
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
                            "Collection",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 110,
                      right: 90,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .50,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                      ),
                    ),
                    Positioned(
                      bottom: 120,
                      right: 55,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * .70,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                      ),
                    ),
                    Align(
                      child: Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width * .85,
                        decoration: BoxDecoration(
                          color: Colors.white,
//                        image: DecorationImage(
//                            image: AssetImage("images/1.jpg"),
//                            fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/couple3.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
//                                  bottomLeft: Radius.circular(20),
//                                  bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Sunglasses",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          .copyWith(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      "I saw that you were perfect.Then I saw that you were not perfect",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                        fontSize: 8,
                                        color: Colors.grey,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "I loved you even more.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(
                                        fontSize: 8,
                                        color: Colors.grey,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
          height: 140,
          decoration: BoxDecoration(
//          border: Border.all(
            color: Colors.red,
//          ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CollectionWomen()));
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "CONTINUE",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
//                border: Border.all(
//                  color: Colors.red,
//                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
