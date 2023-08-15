import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/settings_screen/subscription.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardName;
  String cardNumber;
  final cardNumberController =
      MaskedTextController(mask: '0000-0000-0000-0000');
  final cardExpiryController = MaskedTextController(mask: '00/00');
  String cardCVV;
  String cardExpiry;
  String bankName;
  CardType _cardType = CardType.masterCard;
  bool _cardSide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Subscription()));
          },
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Payment',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                height: 60,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    child: Container(
                      width: 100,
                      child: Image.network(
                        'https://www.pngkey.com/png/detail/147-1471224_credit-card-icon-debit-card-icon-png.png',
                        width: 20,
                        height: 60,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      child: Image.network(
                          'https://image.jimcdn.com/app/cms/image/transf/none/path/s97ce86fc48b197ba/image/id65fc4b1e99396d1/version/1540065551/image.jpg'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxypYHbwQQ-dIMMmQkXri_udlUtCgpoOVuckzns9wcTvoc4aOjXCkC0LRHAno2P9jofXc&usqp=CAU'),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _cardSide = !_cardSide;
                                });
                              },
                              child: CreditCard(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  cardNumber:
                                      cardNumber ?? "5450 7879 4864 9000",
                                  cardExpiry: cardExpiry ?? "10/25",
                                  cardHolderName: cardName ?? "Card Holder",
                                  cvv: cardCVV ?? "456",
                                  bankName: bankName ?? "Axis Bank",
                                  cardType:
                                      _cardType, // Optional if you want to override Card Type
                                  showBackSide: _cardSide,
                                  frontBackground: CardBackgrounds.black,
                                  backBackground: CardBackgrounds.white,
                                  showShadow: true,
                                  textExpDate: 'Exp. Date',
                                  textName: 'Name',
                                  textExpiry: 'MM/YY'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(16.0),
                                color: Colors.white,
                              ),
                              height: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Credit Card"),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _cardType = CardType.visa;
                                            });
                                          },
                                          child: Image.network(
                                            'https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/visa-512.png',
                                            width: 60,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _cardType = CardType.masterCard;
                                            });
                                          },
                                          child: Image.network(
                                            'https://cdn.iconscout.com/icon/free/png-256/master-card-4-842898.png',
                                            width: 60,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _cardType =
                                                  CardType.americanExpress;
                                            });
                                          },
                                          child: Image.network(
                                            'https://www.pngrepo.com/png/266068/180/american-express.png',
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Bank Name'),
                                maxLength: 19,
                                onChanged: (value) {
                                  bankName = value;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: TextFormField(
                                controller: cardNumberController,
                                decoration:
                                    InputDecoration(hintText: 'Card Number'),
                                maxLength: 19,
                                onChanged: (String value) {
                                  cardNumber = value;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Name On Card '),
                                onChanged: (value) {
                                  cardName = value;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 25),
                              child: TextFormField(
                                decoration: InputDecoration(hintText: 'CVV'),
                                maxLength: 3,
                                onChanged: (value) {
                                  cardCVV = value;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: TextFormField(
                                controller: cardExpiryController,
                                decoration:
                                    InputDecoration(hintText: 'Card Expiry'),
                                maxLength: 5,
                                onChanged: (value) {
                                  cardExpiry = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
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
}
