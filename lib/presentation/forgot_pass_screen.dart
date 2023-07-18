import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uma_sunns/presentation/thank_you.dart';
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
  TextEditingController _emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ///forgot heading
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: AppPadding.p180, ),
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
                      padding: const EdgeInsets.only(),
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
                  height: AppSize.s10,
                ),

                ///emailfield
                Padding(
                  padding: EdgeInsets.only(),
                  child: SizedBox(
                    height: AppSize.s50,
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        //textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          label: Text(AppString.email),
                          // hintText: AppString.email,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: SvgPicture.asset(ImageAssets.emailLogo,width: AppSize.s12,height: AppSize.s12,fit: BoxFit.scaleDown,),
                        ),
                        validator: (value){
                          final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);

                          if(value!.isEmpty){
                            return "Enter email";
                          }
                          else if(!emailValid){
                            return "Enter valid email";
                          }
                        },
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: AppSize.s25, right: AppSize.s40, top: AppSize.s5),
                //   child: Container(
                //     height: AppSize.s40,
                //     width: AppSize.s300,
                //     decoration: BoxDecoration(
                //         border: Border.all(color: ColorManager.grey),
                //         borderRadius: BorderRadius.circular(5.0)),
                //     child: TextField(
                //       keyboardType: TextInputType.emailAddress,
                //       decoration: InputDecoration(
                //         prefixIcon: Image.asset(ImageAssets.emailLogo),
                //         border: InputBorder.none,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: AppSize.s10,
                ),
                ///text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(),
                      child: Text(
                        AppString.forgotsubtitle1,
                        style: TextStyle(fontSize: FontSize.s14),
                      ),
                    ),
                   const Padding(
                      padding:  EdgeInsets.only(right: AppPadding.p8),
                      child: Text(
                        AppString.forgotsubtitle2,
                        style: TextStyle(
                            fontSize: FontSize.s16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: AppPadding.p12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppString.password,
                        style: TextStyle(
                            fontSize: FontSize.s16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.s80,
                ),

                ///button
                ButtonWidget(
                    buttonText: AppString.changepassbtn,
                    buttonColor: ColorManager.primary,
                    textColor: ColorManager.white,
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSize.s20,
                    onPressed: () {
                      if(_formKey.currentState!.validate()
                      ){
                        print("sucess");
                        _emailController.clear();
                        showDialog(context: context, builder: (BuildContext context) => ThankYouScreen());

                      }
                    })
              ],
            ),
          ),
        ));
  }
}
