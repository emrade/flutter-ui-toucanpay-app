import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_ui_toucan_pay_app/utils.dart/utils.dart';

class ManageView extends StatefulWidget {
  @override
  _ManageViewState createState() => _ManageViewState();
}

class _ManageViewState extends State<ManageView>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryBlack,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              height: 300.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    bottom: 0,
                    top: -260.0,
                    right: -1100.0 + (MediaQuery.of(context).size.width),
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryBlack,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    left: 20.0,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        LineIcons.long_arrow_left,
                        color: AppColors.primaryBlack,
                        size: 35.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    right: 20.0,
                    child: IconButton(
                      icon: Icon(
                        LineIcons.edit,
                        color: Colors.white70,
                        size: 35.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40.0,
              left: 20.0,
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.only(left: 15.0, top: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Texts.headerTextManage,
                    SizedBox(
                      height: 10.0,
                    ),
                    TabBar(
                      controller: tabController,
                      indicatorColor: Colors.transparent,
                      labelColor: AppColors.secondaryColor,
                      unselectedLabelColor: AppColors.primaryBlack,
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(right: 25.0),
                      tabs: <Widget>[
                        Tab(
                          child: TabText.tabText1,
                        ),
                        Tab(
                          child: TabText.tabText2,
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 100.0),
                      child: Column(
                        children: <Widget>[
                          _buildExchangeRate(Color(0xFFFF7B2B),
                              "British Pounds", "BGP", "620.00", context),
                          SizedBox(
                            height: 30.0,
                          ),
                          _buildExchangeRate(Color(0xFF62BCC4), "US Dollars",
                              "USD", "0.90", context),
                          SizedBox(
                            height: 30.0,
                          ),
                          _buildExchangeRate(Color(0xFF6967B8), "Euro", "EUR",
                              "190.0", context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExchangeRate(Color color, String currencyName,
      String currencyCode, String amount, BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width - 60.0,
      decoration: BoxDecoration(
        color: color.withAlpha(220),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.elliptical(90.0, 110.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            left: 20.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    currencyName,
                    style: TextStyle(
                      fontFamily: Fonts.primaryFont,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    currencyCode,
                    style: TextStyle(
                      fontFamily: Fonts.primaryFont,
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 19.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child: Text(
              amount,
              style: TextStyle(
                fontFamily: Fonts.primaryFont,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
