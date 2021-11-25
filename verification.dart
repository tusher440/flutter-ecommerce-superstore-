import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:superstore/views/signin.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    otpField(bool first,last){
      return Container(
        height: 50,
        width: 50,
        color: Colors.white,
        child: TextField(
          autofocus: true,
          onChanged: (value){
            if(value.length == 1 && last == false){
              FocusScope.of(context).nextFocus();
            }
            if(value.length == 1 && first == false){
              FocusScope.of(context).previousFocus();
            }
          },
          //showCursor: false,
          cursorColor: Color(CustomColor.main),
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counter: Offstage(),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(CustomColor.bg),
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
                  Container(height: 50,color: Colors.black,width: 2,),
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
              Text('Verification',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Text('A 5-Digit PIN has been sent to your',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),
              ),
              Text('email Enter it below to continue',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              //for otp
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  otpField(true, false),
                  otpField(true, false),
                  otpField(true, false),
                  otpField(true, false),
                  otpField(true, true),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                  },
                  child: Text("Continue",
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
              SizedBox(height: 20),
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
      ),
    );
  }
}
