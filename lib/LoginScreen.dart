import 'package:flutter/material.dart';
import 'package:uma_sunns/resources/asset_manager.dart';
import 'package:uma_sunns/resources/color_manager.dart';
import 'package:uma_sunns/resources/font_manager.dart';
import 'package:uma_sunns/resources/string_manager.dart';
import 'package:uma_sunns/resources/value_manager.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _userNameController = TextEditingController();
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p130),
                child: Text(AppString.signinhead,style: TextStyle(fontSize: FontSize.s36,color: ColorManager.Darkblue,
                    fontWeight: FontWeightManager.bold),),
              ),
               Padding(padding: const EdgeInsets.only(top: AppPadding.p55),child: Text(AppString.email,style: TextStyle(fontSize: FontSize.s20,
                  fontWeight:FontWeightManager.medium,color:ColorManager.faintgrey),),),
              const SizedBox(
                height: AppSize.s10,
              ),
              SizedBox(
                height: AppSize.s50,
                child: TextField(
                  controller: _userNameController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(

                    hintText: AppString.email,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s12)
                    ),
                    prefixIcon: Image.asset(ImageAssets.emailLogo),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top:AppPadding.p28),child: Text(AppString.password,style: TextStyle(fontSize: FontSize.s20,
                  fontWeight:FontWeightManager.medium,color:ColorManager.faintgrey),),),
              const SizedBox(
                height: AppSize.s10,
              ),
              SizedBox(
                height: AppSize.s50,
                child: TextField(
                 // controller: _userNameController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: AppString.password,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s12),
                    ),
                      prefixIcon: Image.asset(ImageAssets.passwordlockLogo),

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
                  obscureText: isPasswordVisible,
                ),
              ),
             const SizedBox(
               height: AppSize.s16,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 TextButton(onPressed: (){},
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
    );
}
Widget ButtonWidget(){
    return SizedBox(
      width: double.infinity,
      height: AppSize.s50,
      child: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        backgroundColor: ColorManager.primary),
          child: Text(AppString.signin,style: TextStyle(color: Colors.white,fontWeight: FontWeightManager.bold,fontSize: FontSize.s20),) ),
    );
}
}



