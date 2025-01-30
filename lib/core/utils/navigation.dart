import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

dynamic navigateToAndRemoveLastScreens(context, Widget screen) {
  return Navigator.pushAndRemoveUntil(
    context,
    Platform.isIOS
        ? CupertinoPageRoute(
            builder: (context) => screen,
          )
        : MaterialPageRoute(
            builder: (context) => screen,
          ),
    (route) => false,
  );
}

dynamic push(BuildContext context, Widget screen) {
  return Navigator.push(
    context,
    Platform.isIOS
        ? CupertinoPageRoute(
            builder: (context) => screen,
          )
        : MaterialPageRoute(
            builder: (context) => screen,
          ),
  );
}

dynamic pushAndReplacementReplacement(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(
    context,
    Platform.isIOS
        ? CupertinoPageRoute(
            builder: (context) => screen,
          )
        : MaterialPageRoute(
            builder: (context) => screen,
          ),
  );
}

dynamic pop(BuildContext context) {
  return Navigator.pop(context);
}
