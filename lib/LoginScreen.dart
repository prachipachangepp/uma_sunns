import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uma_sunns/resources/asset_manager.dart';
import 'package:uma_sunns/resources/color_manager.dart';
import 'package:uma_sunns/resources/font_manager.dart';
import 'package:uma_sunns/resources/routs_manager.dart';
import 'package:uma_sunns/resources/string_manager.dart';
import 'package:uma_sunns/resources/value_manager.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String password ='';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return _getLogin();
  }
Widget _getLogin(){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p130),
                  child: Text(AppString.signinhead,style: TextStyle(fontSize: FontSize.s36,color: ColorManager.navyblue,
                      fontWeight: FontWeightManager.bold),),
                ),
                 Padding(padding: const EdgeInsets.only(top: AppPadding.p55),child: Text(AppString.email,style: TextStyle(fontSize: FontSize.s20,
                    fontWeight:FontWeightManager.medium,color:ColorManager.faintgrey),),),
                const SizedBox(
                  height: AppSize.s10,
                ),
                SizedBox(
                  height: AppSize.s50,
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
                Padding(padding: const EdgeInsets.only(top:AppPadding.p28),child: Text(AppString.password,style: TextStyle(fontSize: FontSize.s20,
                    fontWeight:FontWeightManager.medium,color:ColorManager.faintgrey),),),
                const SizedBox(
                  height: AppSize.s10,
                ),
                SizedBox(
                  height: AppSize.s50,
                  child: TextFormField(
                   controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        label: Text(AppString.password),
                      // hintText: AppString.password,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                        prefixIcon: Icon(Icons.lock,color: ColorManager.primary,),

                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                        onPressed: (){
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      )
                    ),
                    validator: (value){
                     if(value!.isEmpty){
                       return "Enter password";
                     }else if(_passwordController.text.length < 6){
                       return "Password Length should be more then 10 charecter";
                     }
                    },
                    obscureText: isPasswordVisible,
                  ),
                ),
               const SizedBox(
                 height: AppSize.s16,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   TextButton(onPressed: (){
                     Navigator.pushReplacementNamed(context, Routes.forgetPassword);

                   },
                       child: Text(AppString.forgetpass,style: TextStyle(color: ColorManager.faintblue,fontWeight:FontWeightManager.regular),))

                 ],
               ),
                const SizedBox(
                  height: AppSize.s40,
                ),

                ButtonWidget()
              ],
            ),
          ),
        ),
      ),
    );
}

Widget ButtonWidget(){
    return SizedBox(
      width: double.infinity,
      height: AppSize.s50,
      child: ElevatedButton(onPressed: (){ if(_formKey.currentState!.validate()
      ){
        print("sucess");
        _emailController.clear();
        _passwordController.clear();
        Navigator.pushReplacementNamed(context, Routes.HomeScreen);

      }},
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        backgroundColor: ColorManager.primary),
          child: Text(AppString.signin,style: TextStyle(color: Colors.white,fontWeight: FontWeightManager.bold,fontSize: FontSize.s20),) ),
    );
}
}



