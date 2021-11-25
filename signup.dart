import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/signin.dart';
import 'package:superstore/views/verification.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15,left: 15),
          child: FaIcon(FontAwesomeIcons.chevronLeft,color: Colors.black,size: 20,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Sign up',
              style: TextStyle(
                  color: Color(CustomColor.main),
                  fontWeight: FontWeight.w500,
                fontSize: 15
              ),
            ),
          ),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
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
                            color: Colors.black
                        ),
                      ),
                      Text('FASHION',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Container(height: 50,color: Colors.black,width: 2,)
                ],
              ),
              SizedBox(height: 30,),
              //for image
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/main-qimg-cf89e8e6daa9dabc8174c303e4d53d3a.png'),
                  ),
                  Icon(Icons.add,color: Colors.grey,)
                ],
              ),
              SizedBox(height: 20,),
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
                  decoration: InputDecoration(
                    labelText: 'Email',
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
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot password?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        VerificationScreen()), (Route<dynamic> route) => false);
                  },
                  child: Text("SIGN UP",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(" Sign in",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(CustomColor.main),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      )
    );
  }
}
