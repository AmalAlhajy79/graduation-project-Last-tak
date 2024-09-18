
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_components/app_scaffold.dart';

class Hometest1 extends StatelessWidget {
  Hometest1({Key? key}) : super(key: key);

  static const name = '/mainScreen';
  static final page = GetPage(
    name: name,
    page: () => Hometest1(),
  );

  @override
  Widget build(BuildContext context) {

    return AppScaffold(

      body: Container(
        child: Center(child: Text('Hometest1 screen')),
      )
    );
  }
}


