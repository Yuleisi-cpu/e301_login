import 'package:e301_login/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  bool validateForm(){
    if(formKey.currentState!.validate()){
      // print('Form valid... Login');
      // print('$email -> $password');
      return true;
      
    }else{
      // print('Form no valid!');
      return false;
    }
    
  }
}