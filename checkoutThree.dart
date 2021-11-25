import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superstore/customcolor.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:superstore/views/blog.dart';

class CheckoutThreeScreen extends StatefulWidget {
  const CheckoutThreeScreen({Key key}) : super(key: key);

  @override
  _CheckoutThreeScreenState createState() => _CheckoutThreeScreenState();
}

class _CheckoutThreeScreenState extends State<CheckoutThreeScreen> {

  var isOn = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool useBackgroundImage = true;
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text('Edit Cards',
          style: TextStyle(
              color: Color(CustomColor.main),
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 15),
            child: FaIcon(FontAwesomeIcons.search,color: Colors.grey,size: 20,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //for widget
            CreditCardWidget(
              glassmorphismConfig:
              useGlassMorphism ? Glassmorphism.defaultConfig() : null,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cardBgColor: Colors.grey,
              backgroundImage:
              useBackgroundImage ? 'images/istockphoto-534050484-170667a.jpg' : null,
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Image.asset(
                    'assets/mastercard.png',
                    height: 48,
                    width: 48,
                  ),
                ),
              ],
            ),
            //for form
            CreditCardForm(
              formKey: formKey,
              obscureCvv: false,
              obscureNumber: false,
              cardNumber: cardNumber,
              cvvCode: cvvCode,
              cardHolderName: cardHolderName,
              expiryDate: expiryDate,
              themeColor: Colors.grey,
              textColor: Colors.grey,
              cardHolderDecoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,fontSize: 12,),
                labelStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.bold),
                labelText: 'Name on Card',
              ),
              cardNumberDecoration: InputDecoration(
                suffix: Image(image: AssetImage('images/download-removebg-preview.png'),height: 15,),
                labelText: 'Card Number',
                labelStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                hintText: 'XXXX XXXX XXXX XXXX',
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              expiryDateDecoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,fontSize: 12,),
                labelStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.bold),
                labelText: 'Expired Date',
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,fontSize: 12,),
                labelStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.bold),
                labelText: 'CVV',
                hintText: 'XXXX',
              ),

              onCreditCardModelChange: onCreditCardModelChange,
            ),
            //for save card
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(CustomColor.main),
                    radius: 10,
                    child: Icon(Icons.done,color: Colors.white,size: 15,),
                  ),
                  SizedBox(width: 10,),
                  Text('Save this card details',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('CANCEL',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(CustomColor.main),width: 1),
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Blog()));
                      },
                      child: Text('SAVE',
                        style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(CustomColor.main),
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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
              Icon(Icons.home_outlined,color: Colors.grey),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.shopping_basket_outlined,color: Color(CustomColor.main),),
                    Text(' Cart',
                      style: TextStyle(
                          color: Color(CustomColor.main),
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.person_outline,color: Colors.grey,),
              Icon(Icons.settings,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}

