import 'package:flutter/material.dart';

import '../constants/ConstantSize.dart';

abstract class ConstantStyle{
  static drawerBoxDecorationStyle({color}){
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(ConstantSize.BOXRADIUS),bottomRight: Radius.circular(ConstantSize.BOXRADIUS)),
    );
  }

  static drawerBottomItemDecorationStyle({color}){
    return BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        bottomRight: Radius.circular(0.0),
        bottomLeft: Radius.circular(0.0),
      ),
    );
  }

  static commonBoxDecorationStyle({color}){
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(ConstantSize.BOXRADIUS),
    );
  }

}