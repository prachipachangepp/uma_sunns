import 'package:flutter/material.dart';
import '../constants/button_constant.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routs_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value_manager.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: AppSize.s500,
            width: AppSize.s350,

            decoration: BoxDecoration(color: ColorManager.white,borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.only(top: AppPadding.p100,right: AppPadding.p100),
                  child:  Text(AppString.thanku,style: TextStyle(fontSize: FontSize.s40,color: ColorManager.navyblue,fontWeight: FontWeightManager.bold),),),
                  SizedBox(height: AppSize.s25,),
                  Padding(padding: const EdgeInsets.only(right: AppPadding.p50,),
                    child:  Text(AppString.thankusubtitle1,style: TextStyle(fontSize: FontSize.s16,color: ColorManager.faintgrey,fontWeight: FontWeightManager.regular),),),
                  SizedBox(height: AppSize.s10,),
                  Padding(padding: const EdgeInsets.only(right: AppPadding.p40,),
                    child:  Text(AppString.thankusubtitle2,style: TextStyle(fontSize: FontSize.s16,color: ColorManager.black,fontWeight: FontWeightManager.semoBold),),),

                  SizedBox(height: AppSize.s60,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ButtonWidget(buttonText: AppString.okay, buttonColor: ColorManager.primary,
                        textColor: ColorManager.white, fontWeight: FontWeight.bold, fontSize: FontSize.s20,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, Routes.LogIn);
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
