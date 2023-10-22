import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,

        title: Text(
          'Reward',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: Colors.white),
        ),
        actions: [
          Image.asset(
            'assets/Male User.png',
            height: 35.h,
            width: 35.w,
          ),
          SizedBox(
            width: 15.w,
          )
        ],
        centerTitle: false,
        // leading: InkWell(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //     )),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.w,
            ),
            Text(
              "Your Current Standing:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Bronze",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 35.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 6),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Center(
                  child: Text(
                '100 Points',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.black),
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Image.asset(
              "assets/transparent Bronze badge 1.png",
              height: 140.h,
              width: 140.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () {
                // if (_formKey.currentState!.validate()) {
                //   AppConstant.email = emailC.text;
                //   AppConstant.name = nameC.text;
                // Get.to(const RegistrationCompleteScreen());
                // }
              },
              child: Container(
                height: 35.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
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
                      fontSize: 16.sp,
                      color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
