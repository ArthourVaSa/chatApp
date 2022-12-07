// ignore_for_file: prefer_const_constructors, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:chat/widgets/blue_button.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/label.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(title: "Sign In",),
                  _FormState(),
                  Labels(
                    ruta: "login",
                    title: "¿Ya tienes una cuenta?",
                    subTitle: "Ve a hacer login!",
                  ),
                  Text(
                    "Términos y Condiciones de Uso",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _FormState extends StatefulWidget {
  _FormState({Key? key}) : super(key: key);

  @override
  State<_FormState> createState() => __FormStateState();
}

class __FormStateState extends State<_FormState> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.person_outline,
            placeHolder: "Name",
            keyboardType: TextInputType.text,
            textController: nameController,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeHolder: "Email",
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeHolder: "Password",
            textController: passwordController,
            isPassword: true,
          ),
          BlueButton(
            onPressed: () {
              print(emailController.text);
              print(passwordController.text);
            },
            text: "Sign In",
          ),
        ],
      ),
    );
  }
}
