import 'package:flutter/material.dart';
import 'package:uma_sunns/resources/color_manager.dart';
import 'package:uma_sunns/resources/string_manager.dart';

import '../resources/font_manager.dart';
import '../resources/value_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        title: Text(
          AppString.home,
          style: TextStyle(
            color: ColorManager.navyblue,
            fontWeight: FontWeightManager.bold,
          ),
        ),
      ),
      body: Center(
        child: Text('Under development...'),
      ),
    );
  }
}
