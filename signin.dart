import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/Discover.dart';
import 'package:superstore/views/signup.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage('images/pexels-konstantin-mishchenko-1926769.jpg'),width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
          SafeArea(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/12),
                  //remove container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Super Store',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            //fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white
                          ),
                          ),
                          Text('FASHION',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Container(height: 50,color: Colors.white,width: 2,)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/8),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(25))
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            //for welcome box
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.2),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                  Text('Welcome',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Sign up to get started and experience',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      color: Colors.grey
                                    ),
                                  ),
                                  Text('great shopping deals',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      color: Colors.grey
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      primaryColor: Color(CustomColor.main)
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Username',
                                        labelStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.withOpacity(.8),
                                          fontSize: 12
                                        ),
                                      ),
                                      cursorColor: Color(CustomColor.main).withOpacity(.5),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      primaryColor: Color(CustomColor.main)
                                    ),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.withOpacity(.8),
                                          fontSize: 12
                                        ),
                                      ),
                                      cursorColor: Color(CustomColor.main).withOpacity(.5),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => discover()));
                                        },
                                        child: Text("SIGN IN",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(vertical: 13),
                                        primary: Color(CustomColor.main),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                        )
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 40,),
                                ],
                              ),
                            ),
                            //for out of welcome box
                            SizedBox(height: 20,),
                            Text('- OR -'),
                            SizedBox(height: 20,),
                            //for fb
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.5),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.facebookSquare,color: Color(CustomColor.fb),size: 20,),
                                    SizedBox(width: MediaQuery.of(context).size.width/6,),
                                    Text('Sign in with Facebook',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //for google
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(.5),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.google,size: 20,color: Colors.deepOrange,),
                                    SizedBox(width: MediaQuery.of(context).size.width/6,),
                                    Text('Sign in with Google',
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                                  },
                                  child: Text(" Signup",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(CustomColor.main),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
          )
        ],
      )
    );
  }
}
