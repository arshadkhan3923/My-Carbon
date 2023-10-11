import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/Widgets/dropdowm.dart';
import 'package:mycarbon/welcomeScreen.dart';

class RegistrationScreen extends StatefulWidget {
   RegistrationScreen({super.key});


  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  bool obsecurePassword=false;
  List<String> gender =['Male','Female','Specific'];
  List<String> AgeGroup =['1-10 ','11-15 ','16-20','21-25','26-30 ','31-40','41-50','50-60 ','60-100'];

  TextEditingController emailC =TextEditingController();

  TextEditingController nameC =TextEditingController();

  TextEditingController passwordC =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,
        title: Text('Registration',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),centerTitle: true,
      leading: InkWell(onTap:(){Get.back();},
          child: Icon(Icons.arrow_back_ios,color: Colors.black,)),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Form(key: _formKey,
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              Text('Name'),
                SizedBox(height: 5.h,),
              TextFormField(

                controller: nameC,
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
              SizedBox(height: 10,),
              Text('Gender'),
                SizedBox(height: 5.h,),
              CustomDropDown(textstyle: TextStyle(), items: gender, hintText: 'Select Gender', onChanged: (value){
                AppConstant.gender=value!;
              }),
              SizedBox(height: 10,),
              Text('AgeGroup:'),
                SizedBox(height: 5.h,),
              CustomDropDown(textstyle: TextStyle(), items: AgeGroup, hintText: 'Select Gender', onChanged: (value){
                AppConstant.age=value!;
              }),
              SizedBox(height: 10.h,),
              Center(
                child: InkWell(
                  child: InkWell(onTap: (){
                    if(_formKey.currentState!.validate()){
                      AppConstant.email=emailC.text;
                      AppConstant.name=nameC.text;
                      Get.to(WelcomeScreen());
                    }
                },
                    child: Container(height: 40.h,width: 100.w,
                      decoration: ShapeDecoration(color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                      child: Center(child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),),
                  ),
                ),
              ),

            ],),
          ),
        ),
      ),
    );
  }
}
