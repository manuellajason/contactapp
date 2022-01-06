import 'package:flutter/material.dart';

void pageIntent(context,page){
   Navigator.push(context, MaterialPageRoute(
    builder: (context) => page));
}

class Constants{
   static const cardColor = Color.fromRGBO(236,244,247,1);
   static const cardsubtitlecolor = Color.fromRGBO(174,180,182,1);
}

