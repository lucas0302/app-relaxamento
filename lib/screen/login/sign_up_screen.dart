import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_button.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_text_field.dart';
import 'package:app_relaxamento_faculdade/screen/home/topic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SignUpScreen> {

  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/img/logo.png",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                              context.pop();
                            
                            }, child: 
                                Image.asset("assets/img/bg.png",
                                width: 55,
                                height: 55,                       
                              ),
                            ),
                          ],
                        ),
                      ),


                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Crie sua conta",
                        style: TextStyle(
                          color: Tcolor.primaryText,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {

                          },
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: const Color(0xff8E97FD),
                          height: 60,
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)
                          ), 
                          child: Row(
                            children: [

                              const SizedBox(width: 15,),
                              Image.asset(
                                'assets/img/facebook.png', 
                                width: 25, 
                                height: 25,
                              ),

                              const Expanded(
                                child: Text(
                                  "ENTRE COM FACEBOOK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              const SizedBox(
                                width: 40,
                              ),
                            ],
                          ), 
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {

                          },
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: Colors.white,
                          height: 60,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Tcolor.tertiary,
                              width: 1
                            ),
                            borderRadius: BorderRadius.circular(30)
                          ), 
                          child: Row(
                            children: [

                              const SizedBox(width: 15,),
                              Image.asset(
                                'assets/img/search.png', 
                                width: 25, 
                                height: 25,
                              ),

                              Expanded(
                                child: Text(
                                  "ENTRE COM GOOGLE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Tcolor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              const SizedBox(
                                width: 40,
                              ),
                            ],
                          ), 
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),

              Text(
                "OU ENTRE COM O EMAIL",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(
                height: 35,
              ),

              RoundTextField(hintText: "Usuário",),

              const SizedBox(
                height: 20,
              ),

              RoundTextField(hintText: "Email",),

              const SizedBox(
                height: 20,
              ),
              RoundTextField(hintText: "Senha", obscureText: true,),
              const SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Eu li a ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Tcolor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(
                      "Política de privacidade",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Tcolor.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      ),
                    ),

                    const Spacer(),

                    IconButton(onPressed: (){
                      setState(() {
                        isTrue = !isTrue;
                    });

                   }, 
                    icon: Icon( 
                      isTrue 
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_rounded,
                        color:isTrue? Tcolor.primary : Tcolor.secondaryText,
                    ))

                  ],
                ),
              ),

              const SizedBox(
                height: 8,
              ),


              RoundButton(title: "COMEÇAR", onPressed: () {
                context.push(const ChoseTopicScreen());
              }),
              

              const Spacer(),              
            ],
          ),
        ),
      ),
    );
  }
}