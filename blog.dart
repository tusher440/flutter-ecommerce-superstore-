import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ecommerce/settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/views/settings.dart';
//import 'package:top_modal_sheet/top_modal_sheet.dart';

class Blog extends StatefulWidget {
  const Blog({Key key}) : super(key: key);
  @override
  _BlogState createState() => _BlogState();
}
class _BlogState extends State<Blog> {
  bool sateNext = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage('images/alexi.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 35),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
                        ),
                        SizedBox(width: 100),
                        Text(
                          "Our Blog",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 90),
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      children: [
                        Text(
                          "Post Christmas Conundrum",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 160),
                          child: Text(
                            "By Akson Dunn",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                    ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    "User interface (UI) design is the process designers use to build interfaces in software or computerized devices, focusing on looks or style. Designers aim to create interfaces which users find easy to use and pleasurable. UI design refers to graphical user interfaces and other forms—e.g., voice-controlled interfaces.\n\n\n"
                                    "with the surface and overall feel of a design. UI design is a craft where you the designer build an essential part of the user experience. UX design covers the entire spectrum of the user experience. One analogy is to picture UX design as a car with UI design as the driving console.\n\n"
                                    "User interface (UI) design is the process designers use to build interfaces in software or computerized devices, focusing on looks or style. Designers aim to create interfaces which users find easy to use and pleasurable. UI design refers to graphical user interfaces and other forms—e.g., voice-controlled interfaces\n\n\n\n."
                                    "27 Dec 2019",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Divider(
                        color: Colors.black12,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Comments",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 20),
                                              primary: Colors.blueGrey,
                                            ),
                                            child: Icon(
                                              Icons.arrow_back,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                          SizedBox(width: 5),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                              primary: Colors.red,
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                sateNext = true;
                                              });
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  children: [
                                    Text(
                                      "Get the Latest subscribes?",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Text(
                                      "Subcribes",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
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
            ),
            Align(
              alignment: Alignment.center,
              child: checkState(sateNext),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                (Icons.home_filled),
                color: Colors.red,
              ),
              Text(
                "Home",
                style: TextStyle(color: Colors.red, fontSize: 14),
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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 24,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget checkState(bool stateNext) {
    final size = MediaQuery.of(context).size;
    if (stateNext == true) {
      return Container(
        color: Colors.grey.shade200.withOpacity(0.5),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: Colors.red,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Notification Title",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          Text(
                            "We can be happy with less and miserable",
                            maxLines: 1,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            sateNext = false;
                          });
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                //color: Colors.grey.shade200.withOpacity(0.5),
                height: size.height,
                width: size.width,
              ),
            )
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
