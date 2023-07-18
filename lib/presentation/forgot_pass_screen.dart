import 'package:flutter/material.dart';
import 'package:uma_sunns/resources/color_manager.dart';
import 'package:uma_sunns/resources/font_manager.dart';
import 'package:uma_sunns/resources/string_manager.dart';
import 'package:uma_sunns/resources/value_manager.dart';

import '../constants/button_constant.dart';
import '../resources/asset_manager.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: Container(
          child: Column(
            children: [
              ///forgot heading
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: AppPadding.p180, left: AppPadding.p25),
                    child: Text(
                      AppString.forgotpasshead,
                      style: TextStyle(
                          fontSize: FontSize.s40,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.navyblue),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s25,
              ),

              ///email txt
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p25),
                    child: Text(
                      AppString.email,
                      style: TextStyle(
                          fontSize: FontSize.s18,
                          fontWeight: FontWeight.normal,
                          color: ColorManager.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s0,
              ),

              ///emailfield
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSize.s25, right: AppSize.s40, top: AppSize.s5),
                child: Container(
                  height: AppSize.s40,
                  width: AppSize.s300,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(ImageAssets.emailLogo),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),

              ///text
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p50,),
                    child: Text(
                      AppString.forgotsubtitle1,
                      style: TextStyle(fontSize: FontSize.s14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p30),
                    child: Text(
                      AppString.forgotsubtitle2,
                      style: TextStyle(
                          fontSize: FontSize.s14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:const EdgeInsets.only(right: AppPadding.p40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppString.password,
                      style: TextStyle(
                          fontSize: FontSize.s14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s65,
              ),

              ///button
              ButtonWidget(
                  buttonText: AppString.changepassbtn,
                  buttonColor: ColorManager.primary,
                  textColor: ColorManager.white,
                  fontWeight: FontWeightManager.bold,
                  fontSize: FontSize.s20,
                  onPressed: () {})
            ],
          ),
        ));
  }
}
