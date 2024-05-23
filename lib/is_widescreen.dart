import 'package:flutter/material.dart';

bool isWideScreen(context) {
  if (MediaQuery.of(context).size.width > 500) {
    print(
        'widescreen true width >500 ' + "${MediaQuery.of(context).size.width}");
    return true;
  } else {
    print('widescreen false width < 500 ' +
        "${MediaQuery.of(context).size.width}");

    return false;
  }
}
