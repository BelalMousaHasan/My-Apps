import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    
                    defaultFromField(
                      controller : emailController,
                      label : 'Email Address',
                      prefix : Icons.email,
                      type:TextInputType.emailAddress,
                      //validate :(value){
                     //   if(value.isEmpty){
                     //     return 'Email must not be empty';
                     //   }
                     //   return null; 
                    //  }, 
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    defaultFromField(
                      controller: passwordController,
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: isPassword? Icons.visibility : Icons.visibility_off,
                      type: TextInputType.visiblePassword,
                      isPassword: isPassword,
                      
                     // validate :(value){
                     //   if(value.isEmpty){
                     //     return 'Password must not be empty';
                     //   }
                     //   return null;
                    //  }, 
                      
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                      text: 'login',
                      function: () {
                        if(formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text); 
                        }
                        
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {},
                          child: Text('Register Now'),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}