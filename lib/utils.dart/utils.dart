import 'package:flutter/material.dart';

class Images {
  static const headerImage = const AssetImage('assets/images/placeholder.jpg');
  static const man1 = const AssetImage('assets/images/man1.jpg');
  static const man2 = const AssetImage('assets/images/man2.jpg');
  static const man3 = const AssetImage('assets/images/man3.jpg');
  static const man4 = const AssetImage('assets/images/man4.jpg');
  static const man5 = const AssetImage('assets/images/man5.jpg');

  static const woman1 = const AssetImage('assets/images/woman1.jpg');
  static const woman2 = const AssetImage('assets/images/woman2.jpg');
  static const woman3 = const AssetImage('assets/images/woman3.jpg');
  static const woman4 = const AssetImage('assets/images/woman4.jpg');
  static const woman5 = const AssetImage('assets/images/woman5.jpg');
}

class Fonts {
  static const primaryFont = "Quicksand";
}

class AppColors {
  static const primaryBlack = const Color(0xFF313544);
  static const primaryBlue = const Color(0xFF272F5F);
  static const secondaryColor = const Color(0xFFFF8C33);
}

class Texts {
  static const welcomeText = const Text(
    'Welcome Onboard!',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 28.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const welcomeText2 = const Text(
    'If you like please link your social media account to make it easy for other members to identify you.',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 16.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );

  static const connectNowText = const Text(
    'Connect now with',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const nextText = const Text(
    'Next',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.bold,
    ),
  );

  static const headerTextTrade = const Text(
    'Trade',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 30.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const headerTextTrade2 = const Text(
    'I would like to trade:',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const headerTextTrade3 = const Text(
    'For:',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const headerTextTrade4 = const Text(
    'With:',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );

  static const makeOffer = const Text(
    'Make Offer',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 18.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static const headerTextManage = const Text(
    'Manage',
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontSize: 30.0,
      color: AppColors.primaryBlue,
      fontWeight: FontWeight.bold,
    ),
  );
}

class TabText {
  static const tabText1 = const Text(
    "Visible",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
  );

  static const tabText2 = const Text(
    "Hidden",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
  );
}
