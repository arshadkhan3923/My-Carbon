import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/HomeScreen.dart';
import 'package:mycarbon/term_and_condition.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecurePassword=false;
  TextEditingController emailC =TextEditingController();
  TextEditingController passwordC =TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(height: 100,),
                    Center(
                      child: CircleAvatar(radius: 50.r,backgroundImage: AssetImage('assets/c.jpeg'),),
                    ),
                    SizedBox(height: 10.h,),
                    Text('Email'),
                    SizedBox(height: 5.h,),
                    TextFormField(

                      controller: emailC,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Email ';
                        }
                        return null;
                      },

                      decoration: InputDecoration(

                        suffixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Enter your Email ',
                        errorStyle: TextStyle(color: Colors.red),
                        hintStyle: TextStyle(color: Colors.black.withOpacity(0.3799999952316284),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Colors.black),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Colors.black),
                        ),
                      ),

                      style: TextStyle(color: Colors.black,),
                      cursorColor: Colors.black12,
                      // Other properties like validators, controllers, and more can be added here.
                    ),
                    SizedBox(height: 10.h,),
                    Text('Password'),
                    SizedBox(height: 5.h,),
                    TextFormField(

controller: passwordC,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),

                        hintText: 'Password ',
                        suffixIcon: GestureDetector(onTap: (){
                          print('presssssssssssssssssssssssssssssssss');
                          setState(() {

                          });

                          obsecurePassword = !obsecurePassword;
                        },
                          child: Icon(
                            obsecurePassword? Icons.visibility_off:Icons.visibility,
                            color: Colors.black12,
                          ),
                        ),

                        hintStyle: TextStyle(color: Colors.black.withOpacity(0.3799999952316284)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Colors.black),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                          BorderSide(color: Colors.black),
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
                    SizedBox(height: 10,),
                    Center(
                      child: InkWell(onTap: (){
                        if(_formKey.currentState!.validate()){
                        AppConstant.email=emailC.text;
                        if(AppConstant.email==emailC.text && AppConstant.password==passwordC.text){
                          Get.offAll(HomeScreen());
                        }else{
                          Get.snackbar('Error', 'Kindly check your Credentials');
                        }

                      }},
                        child: Container(height: 40.h,width: 80.w,
                        decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                        child: Center(child: Text('SIGN-IN',style: TextStyle(fontWeight: FontWeight.bold),)),),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Center(
                      child: InkWell(
                        child: InkWell(onTap: (){
                          Get.to(TermAndCondition());},
                          child: Container(height: 40.h,width: 100.w,
                            decoration: ShapeDecoration(color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.add,color: Colors.white,),
                                Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),),
                        ),
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
