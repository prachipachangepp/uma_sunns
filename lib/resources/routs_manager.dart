import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uma_sunns/LoginScreen.dart';
import 'package:uma_sunns/presentation/home_screen.dart';
import 'package:uma_sunns/resources/string_manager.dart';

import '../presentation/forgot_pass_screen.dart';

class Routes{
  static const String LogIn = "/";
  static const String HomeScreen = "/HomeScreen";
  static const String forgetPassword = "/ForgotPasswordScreen";

}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.LogIn:
        return MaterialPageRoute(builder: (_)=> LogInScreen());
      case Routes.HomeScreen:
        return MaterialPageRoute(builder: (_)=> HomeScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_)=> ForgotPasswordScreen());


      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute(){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(title: Text(AppString.notFoundRoute),),
      body: Center(child: Text(AppString.notFoundRoute),),
    ));
  }
}