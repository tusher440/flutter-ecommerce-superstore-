import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:superstore/views/signin.dart';
//import 'package:flutter_ecommerce/Discover.dart';
//import 'package:flutter_ecommerce/soton/views/signin.dart';

class splash2 extends StatefulWidget {
  const splash2({Key key}) : super(key: key);

  @override
  _splash2State createState() => _splash2State();
}

class _splash2State extends State<splash2> {

   bool _state = true;
   _checkState(){
     if(_state==true){
       return welCome();
     }
     else{
       return welCome();//SignInScreen();
     }
   }
   Widget welCome(){
     return Scaffold(
       body: Stack(
         children: [
           Align(
             alignment: Alignment.topCenter,
             child: Column(
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height *.8,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
                       bottomLeft: Radius.circular(50),),
                     image: DecorationImage(
                       image: AssetImage('images/alexi.jpg'),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 50),
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 28),
                         child: Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         Icon(Icons.circle, size: 18, color: Colors.white,),
                                         Icon(Icons.circle, size: 18, color: Colors.white30,),
                                         Icon(Icons.circle, size: 18, color: Colors.white30,),
                                         Icon(Icons.circle, size: 18, color: Colors.white30,),
                                       ],
                                     )
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         Text("SKIP",
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 18,
                                           ),
                                         ),
                                       ],
                                     )
                                   ],
                                 ),
                               ],
                             ),
                             SizedBox(height: 150,),
                             Column(
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Column(
                                       children: [
                                         Text("Superstore",
                                           style: TextStyle(
                                             fontSize: 30,
                                             color: Colors.white,
                                           ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 25),
                                           child: Text("FASHION|",
                                             style: TextStyle(
                                               fontSize: 12,
                                               color: Colors.white,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                     Container(
                                       color: Colors.white,
                                       height: 50,
                                       width: 2,
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                             SizedBox(height: 250,),
                             Text("SUPERSTORE UI KIT",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                             Text("Wellcome",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18,
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),


               ],
             ),
           ),
           Positioned(
             bottom: 150,
             child: Container(
               child: Padding(
                 padding: const EdgeInsets.only(left: 120, right: 120),
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                     setState(() {
                       _state=false;
                     });
                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(),
                       Text('GET STARTED',
                         style: TextStyle(
                           color: Color(0xffb3b0af),
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                       Icon(Icons.arrow_forward, color: Color(0xffb3b0af),)
                     ],
                   ),
                   style: ElevatedButton.styleFrom(
                       primary: Colors.red,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25),
                       )
                   ),
                 ),
               ),
             ),
           )
         ],

       ),
     );
   }
  @override
  Widget build(BuildContext context) {
    return _checkState();
  }
}
