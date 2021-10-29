import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

emptyVerticalGap(double? height) => SizedBox(height: height);
emptyHorizontalGap(double? width) => SizedBox(width: width);

applyDivider({double? height = 5.0, double? thickness = 5.0}) => Divider(
      height: height,
      thickness: thickness,
      color: Colors.black.withOpacity(0.2),
    );
