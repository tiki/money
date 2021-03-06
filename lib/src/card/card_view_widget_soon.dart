/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

class CardViewWidgetSoon extends StatelessWidget {
  static const String _text = "You’ll be able to \nsell your data soon";

  const CardViewWidgetSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              child: ImgProvider.iconInfo,
              width: SizeProvider.instance.text(18)),
          Padding(
              padding: EdgeInsets.only(top: SizeProvider.instance.height(4))),
          Text(_text,
              style: TextStyle(
                  fontFamily: TextProvider.familyNunitoSans,
                  package: TextProvider.package,
                  color: ColorProvider.tikiBlue,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                  fontSize: SizeProvider.instance.text(14)))
        ]);
  }
}
