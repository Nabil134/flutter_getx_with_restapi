import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/utils/utils.dart';
import 'package:get_mvvm/view_models/controller/login_view_model.dart';

import '../../res/components/rounded_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = Get.put(LoginViewModel());
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Login'),
      ),
  body:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: _formkey,
          child: Column(
          children: [
            //
            TextFormField(
              controller: loginController.emailController.value,
              focusNode: loginController.emailFocusNode.value,
              validator: (value){
                if(value!.isEmpty){
                  Utils.snackBar('Email', 'Enter Email');
                }
              },
              onFieldSubmitted: (value){
                Utils.fieldFocusChange(context, loginController.emailFocusNode.value, loginController.passwordFocusNode.value);
              },
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(),
              ),
            ),
            //
const SizedBox(height: 20,),
            //
            TextFormField(
              controller: loginController.passwordController.value,
              focusNode: loginController.passwordFocusNode.value,
              obscureText: true,
              obscuringCharacter: '*',
              validator: (value){
                if(value!.isEmpty){
                  Utils.snackBar('Password', 'Enter Password');
                }
              },
              onFieldSubmitted: (value){
              },
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
            //
          ],
        ),),

       const SizedBox(height: 20,),
       //
        RoundedButton(
          width: 200,
          title: 'Login',onPress: (){
print(loginController.emailController.value.text);
print(loginController.emailFocusNode.value.toString());
if(_formkey.currentState!.validate()){

}

        },),
//
    ],),
  ),
    );
  }
}
