import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:superstore/controllers/categorycontroller.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/Collection.dart';

class CategoryThreeScreen extends StatelessWidget {
  const CategoryThreeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CategoryController());
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/pexels-konstantin-mishchenko-1926769.jpg',),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //for appbar
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.stream,size: 20,color: Colors.white,),
                          Text('Women',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          FaIcon(FontAwesomeIcons.search,color: Colors.white.withOpacity(.5),size: 20,),
                        ],
                      ),
                    ),
                    //for offer
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Up to 20% Off',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Women Collection',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                        ),
                        child: Obx(()=>ListView.builder(
                            itemCount: controller.categoryWoman.length,
                            itemBuilder: (context,index)=>Card(
                              elevation: 0,
                              child: InkWell(
                                onTap: (){
                                  if (controller.categoryWoman[index].title=='Collections'){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => collection()));
                                  }
                                },
                                child: ListTile(
                                    leading: Image(image: AssetImage(controller.categoryWoman[index].image)),
                                    title: Text(controller.categoryWoman[index].title,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600
                                    ),
                                    ),
                                    subtitle: Text("${controller.categoryWoman[index].total} items",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey
                                    )
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                                ),
                              ),
                            )
                        )
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
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
