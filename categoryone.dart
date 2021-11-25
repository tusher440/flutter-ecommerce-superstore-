import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:superstore/controllers/categorycontroller.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/account.dart';
import 'package:superstore/views/producttwo.dart';
import 'categorytwo.dart';

class CategoryOneScreen extends StatelessWidget {
  const CategoryOneScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CategoryController());

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
        title: Text('Category',
        style: TextStyle(
          color: Color(CustomColor.main),
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 15),
            child: FaIcon(FontAwesomeIcons.search,color: Colors.grey,size: 20,),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FaIcon(FontAwesomeIcons.longArrowAltLeft,color: Colors.black,size: 20,),
                Text('Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                Icon(Icons.filter_alt_outlined, color: Colors.grey,size: 20,)
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Don’t Buy from us Unless you’re not',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            ),
            Text('Ready for Success',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey
            ),
            ),
            //for gridview
            SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Obx(()=> GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5
                    ),
                    itemCount: controller.categoryWoman.length,
                    itemBuilder: (context,index)=>Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey.withOpacity(.3)
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(25),
                                ),
                                color: Color(CustomColor.main)
                              ),
                                child: Text(controller.categoryWoman[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ),
                          ),
                          Flexible(child: Image(image: AssetImage(controller.categoryWoman[index].image),))
                        ],
                      ),
                    )
                )
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: FittedBox(
        child: Stack(
          children: [
            Container(
              height: 110,
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(CustomColor.main),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
              ),
                child: Text('MEN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white
                ),
                )
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 72,
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(CustomColor.grey),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                ),
                  child: Text('BEST SELLERS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white
                  ),
                  )
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 35,
                padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(CustomColor.grey2),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryTwoScreen()));
                    },
                    child: Text('ALL CATEGORIS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black
                    ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(CustomColor.grey2),
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
              GestureDetector(
                  onTap: ()=>Get.to(ProductTwoScreen()),
                  child: Icon(Icons.shopping_basket_outlined,color: Colors.grey,)),
              GestureDetector(
                  onTap: ()=>Get.to(AccountScreen()),
                  child: Icon(Icons.person_outline,color: Colors.grey,)),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}
