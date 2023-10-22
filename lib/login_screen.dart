import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/botm_navigation__bar_flutter.dart';
import 'package:mycarbon/term_and_condition.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecurePassword = false;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 50.r,
                        // backgroundColor: Colors.green,
                        backgroundImage:
                            AssetImage('assets/First Place Ribbon.png'),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Welcome to MyCarbon!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 5),
                              blurRadius: 4,
                              blurStyle: BlurStyle.normal),
                        ],
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: emailC,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a Email ';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            hintText: 'Enter your Email ',
                            errorStyle: TextStyle(color: Colors.red),
                            hintStyle: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.3799999952316284),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),

                          style: TextStyle(
                            color: Colors.black,
                          ),
                          cursorColor: Colors.black12,
                          // Other properties like validators, controllers, and more can be added here.
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 5),
                              blurRadius: 4,
                              blurStyle: BlurStyle.normal),
                        ],
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: passwordC,
                          decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: 'Password ',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                print('presssssssssssssssssssssssssssssssss');
                                setState(() {});

                                obsecurePassword = !obsecurePassword;
                              },
                              child: Icon(
                                obsecurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black12,
                              ),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.3799999952316284)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a Password ';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black12,
                          obscureText: obsecurePassword,
                          // Other properties like validators, controllers, and more can be added here.
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: checkValue,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              checkValue = value!;
                              if (value) {}
                              setState(() {});
                            }),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 14.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          // if (_formKey.currentState!.validate()) {
                          //   AppConstant.email = emailC.text;
                          //   if (AppConstant.email == emailC.text &&
                          //       AppConstant.password == passwordC.text) {
                          Get.offAll(AppNavigationBar());
                          // } else {
                          //   Get.snackbar(
                          //       'Error', 'Kindly check your Credentials');
                          // }
                          // }
                        },
                        child: Container(
                          height: 40.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 6),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14.sp),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: InkWell(
                        child: InkWell(
                            onTap: () {
                              Get.to(TermAndCondition());
                            },
                            child: Container(
                              height: 40.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 6),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
