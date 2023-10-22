import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/Widgets/dropdowm.dart';
import 'package:mycarbon/registration_complete.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  bool obsecurePassword = false;
  List<String> gender = ['Male', 'Female', 'Specific'];
  List<String> AgeGroup = [
    '1-10 ',
    '11-15 ',
    '16-20',
    '21-25',
    '26-30 ',
    '31-40',
    '41-50',
    '50-60 ',
    '60-100'
  ];

  TextEditingController emailC = TextEditingController();

  TextEditingController nameC = TextEditingController();

  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
        title: Text(
          'Registration',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: Colors.white),
        ),
        centerTitle: true,
        // leading: InkWell(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //     )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 45.0,
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
                          color: Colors.black.withOpacity(0.3799999952316284),
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
                  height: 10.h,
                ),
                Container(
                  height: 45.0,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Email ';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
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
                        errorStyle: TextStyle(color: Colors.red),
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3799999952316284),
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
                  height: 45.0,
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
                      controller: nameC,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Name ';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        hintText: 'Enter your Name ',
                        errorStyle: TextStyle(color: Colors.red),
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3799999952316284),
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
                CustomDropDown(
                    textstyle: TextStyle(),
                    items: gender,
                    hintText: 'Select Gender',
                    onChanged: (value) {
                      AppConstant.gender = value!;
                    }),
                SizedBox(
                  height: 15.h,
                ),
                CustomDropDown(
                    textstyle: TextStyle(),
                    items: AgeGroup,
                    hintText: 'Select Gender',
                    onChanged: (value) {
                      AppConstant.age = value!;
                    }),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 35.h,
                          width: 150.w,
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
                            'Back',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            AppConstant.email = emailC.text;
                            AppConstant.name = nameC.text;
                            Get.to(const RegistrationCompleteScreen());
                          }
                        },
                        child: Container(
                          height: 35.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
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
                            'Confirm',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
