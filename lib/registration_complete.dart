import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/login_screen.dart';

class RegistrationCompleteScreen extends StatelessWidget {
  const RegistrationCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Registration Completed',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Image.asset(
              "assets/Task Completed.png",
              height: 150.h,
              width: 150.w,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              child: InkWell(
                onTap: () {
                  // if (_formKey.currentState!.validate()) {
                  //   AppConstant.email = emailC.text;
                  //   AppConstant.name = nameC.text;
                  Get.to(LoginScreen());
                  // }
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
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
