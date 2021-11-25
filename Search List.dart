import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/views/Discover.dart';

// ignore: camel_case_types
class search123 extends StatefulWidget {
  //const search123({Key? key}) : super(key: key);

  @override
  _search123State createState() => _search123State();
}

class _search123State extends State<search123> {

  bool Satenext = false;

  TextEditingController editingController = TextEditingController();

  final duplicateItems = ["Gucci", "Mens wear", "Richman", "Zara"];

  var items = List<String>();


  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);

    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query))
        {
          dummyListData.add(item);
        }

      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    }
    else
      {
        setState(() {
          items.clear();
          items.addAll(duplicateItems);
        });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: FaIcon(FontAwesomeIcons.stream,color: Colors.black,size: 20,),
        ),
        title:  Center(
          child: Text("Search",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.filter_list_alt,
              size: 25,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20
                ),
                child: TextField(
                  onChanged: (value){
                    filterSearchResults(value);
                  },
                  controller:  editingController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon:  Icon(Icons.search, color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100),
                      ),
                    ),
                  suffixIcon: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.clear, size: 20, color: Colors.black,),
                ),
                  ),
                  ),
                ),
              ),

              SizedBox(height: 30,),
              ListView.builder(
                itemCount: items.length,
                  shrinkWrap: true,
                  // ignore: missing_return
                  itemBuilder: (context, index) {
                    return  ListTile(
                      title: Text(" ${items[index]}"),
                    );
                  },
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon((Icons.home_filled),color: Colors.red,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => discover()));
                },
                child: Text("Home",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Icon(Icons.shopping_cart,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(width: 20,),
              Icon(Icons.people,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(width: 20,),
              Icon(Icons.settings,
                size: 24,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
