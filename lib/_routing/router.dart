import 'package:flutter/material.dart';
import 'package:flutter_ui_toucan_pay_app/views/home.dart';
import 'package:flutter_ui_toucan_pay_app/views/manage.dart';
import 'package:flutter_ui_toucan_pay_app/views/trade.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case tradeViewRoute:
      return MaterialPageRoute(builder: (context) => TradeView());
    case manageViewRoute:
      return MaterialPageRoute(builder: (context) => ManageView());
      break;
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
