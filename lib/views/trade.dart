import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_ui_toucan_pay_app/_routing/routes.dart' as routes;
import 'package:flutter_ui_toucan_pay_app/utils.dart/utils.dart';

class TradeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: Icon(Icons.close, color: AppColors.primaryBlue),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 24.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Texts.headerTextTrade,
                  SizedBox(
                    height: 18.0,
                  ),
                  Texts.headerTextTrade2,
                  SizedBox(
                    height: 15.0,
                  ),
                  _buildMoneyCards('GBP', '0.00', true),
                  SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    children: <Widget>[
                      Texts.headerTextTrade3,
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'i',
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontFamily: Fonts.primaryFont,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  _buildMoneyCards('USD', '0.00', false),
                  SizedBox(
                    height: 35.0,
                  ),
                  Texts.headerTextTrade4,
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 140.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      padding: EdgeInsets.only(bottom: 20.0, left: 12.0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildUserCard(false, true, 'Add', null),
                        _buildUserCard(true, false, 'Use QR', null),
                        _buildUserCard(false, false, 'gregory', Images.man2),
                        _buildUserCard(false, false, 'monique', Images.woman5),
                        _buildUserCard(false, false, 'ambrose', Images.man3),
                        _buildUserCard(false, false, 'philip', Images.man4),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 24, right: 24, top: 30.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(16.0),
                onPressed: () {
                  Navigator.pushNamed(context, routes.manageViewRoute);
                },
                color: AppColors.secondaryColor,
                child: Texts.makeOffer,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontFamily: Fonts.primaryFont,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.8)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMoneyCards(String type, String amount, bool isGrey) {
    var height = 50.0;
    var width = 180.0;
    var radius = 12.0;
    var diff = 10.0;

    return Container(
      // padding: EdgeInsets.only(bottom: 20.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
          )
        ],
      ),
      child: Material(
        elevation: 10.0,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        child: Row(
          children: <Widget>[
            Container(
              width: (width / 2) - diff,
              height: height,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  bottomLeft: Radius.circular(radius),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        type,
                        style: TextStyle(
                            fontFamily: Fonts.primaryFont,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: isGrey
                                ? Colors.grey.withOpacity(0.6)
                                : AppColors.primaryBlue),
                      ),
                      isGrey
                          ? Container()
                          : Icon(
                              LineIcons.arrow_circle_down,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: (width / 2) + diff,
              height: height,
              decoration: BoxDecoration(
                color: Color(0xFFFDFEFE),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(radius),
                  bottomRight: Radius.circular(radius),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    amount,
                    style: TextStyle(
                        fontFamily: Fonts.primaryFont,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUserCard(bool isQR, bool isBtn, String title, AssetImage img) {
    return Container(
      padding: EdgeInsets.only(right: 5.0),
      width: 100.0,
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 10.0,
        shadowColor: Colors.white70,
        child: MaterialButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              (isQR || isBtn)
                  ? Icon(
                      isBtn ? Icons.add_circle : LineIcons.qrcode,
                      color: isBtn ? AppColors.secondaryColor : Colors.black,
                      size: isBtn ? 32.0 : 48.0,
                    )
                  : Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: img),
                      ),
                    ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: Fonts.primaryFont,
                  fontWeight: FontWeight.bold,
                  color: (isBtn || isQR)
                      ? isBtn ? AppColors.secondaryColor : Colors.black
                      : Colors.grey.withOpacity(0.6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
