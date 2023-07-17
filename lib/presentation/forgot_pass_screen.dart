import 'package:flutter/material.dart';
import 'package:uma_sunns/resources/color_manager.dart';
import 'package:uma_sunns/resources/string_manager.dart';

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
                    padding: EdgeInsets.only(top: 170, left: 30),
                    child: Text(
                      AppString.forgotpasshead,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.navyblue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ///email txt
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      AppString.email,
                      style: TextStyle(
                          fontSize: 15.25,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 13,
                    right: MediaQuery.of(context).size.width / 19,
                    top: MediaQuery.of(context).size.height / 50),
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 500,
                      left: MediaQuery.of(context).size.width / 30),
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          offset: Offset(0.0, 1.5),
                        )
                      ],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '@',
                        hintStyle: TextStyle(color: ColorManager.navyblue)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
