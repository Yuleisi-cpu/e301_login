import 'package:e301_login/providers/auth_provider.dart';
import 'package:e301_login/providers/login_form_provider.dart';
import 'package:e301_login/router/router.dart';
import 'package:e301_login/ui/buttons/custom_outlined_button.dart';
import 'package:e301_login/ui/buttons/link_text.dart';
import 'package:e301_login/ui/inputs/custom_inputs.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (contexto) => LoginFormProvider(),
      child: Builder(
        builder: (context){
          final loginFormProvider = Provider.of<LoginFormProvider>(
            context,
            listen: false
            );
          return Container(
        margin: EdgeInsets.only(top: 100),
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.black,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 370),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: loginFormProvider.formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(!EmailValidator.validate(value??''))
                        return 'Correo electrónico inválido';
                      return null;
                    },
                    onChanged: (value) => loginFormProvider.email = value,
                    style: TextStyle(color: Colors.white),
                    decoration: CustomInputs.loginInputDecoration(
                      hint: 'email', 
                      label: 'Correo electrónico', 
                      icon: Icons.email_outlined
                      ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    //Hacer que se vea la contraseña si se mantiene presionado el icono del ojo
                    onChanged: (value) => loginFormProvider.password = value,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Ingrese su contraseña';
                      }
                      if(value.length < 6){
                        return 'La contraseña debe ser mayor a 6 caracteres';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: CustomInputs.loginInputDecoration(
                      hint: '*******', 
                      label: 'Contraseña', 
                      icon: Icons.lock_outlined
                      ),
                  ),
                  SizedBox(height: 20),
                  CustomOutlinedButton(
                    onPressed: () {
                      final isValid = loginFormProvider.validateForm();
                      if(isValid)
                        authProvider.login(
                          loginFormProvider.email, 
                          loginFormProvider.password
                          );
                    }, 
                    text: 'Iniciar sesión',
                    isFilled: true ,
                  ),
                  SizedBox(height: 20),
                  LinkText(
                    texto: 'Nueva Cuenta',
                    onPressed: (){
                      Navigator.pushNamed(context, Flurorouter.registerRoute);
                    },
                    ),
                ],
              ),
              ),
            ),
          ),
      );
        }
        ),
    );
  }
}