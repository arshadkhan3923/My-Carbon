import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/reward_screen.dart';
import 'package:mycarbon/t&c.dart';

import 'ConstantValues.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List<String> items = [
    "Joe Don",
    "Bronze",
    "Male",
    "15 - 19 Years",
    "jdoe@gmail.com",
  ];
  List image = [
    "assets/Badge.png",
    "assets/First Place Ribbon.png",
    "assets/Gender.png",
    "assets/Compare Heights.png",
    "assets/Email.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Profile Screen',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (index == 1) {
                    // Navigate to a new screen when the item at index 2 is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RewardScreen(), // Replace with your desired screen
                      ),
                    );
                  }
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                image[index],
                                height: 40.0,
                                width: 40.0,
                              ),
                              title: Text(
                                items[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.black38,
                            ),
                          ],
                        )),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
            child: Column(
              children: [
                Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(Terms());
                      // Get.to(RewardScreen());
                    },
                    child: Container(
                      height: 40.h,
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
                        'Terms & Conditions',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                        showCustomDialog(context);
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.red,
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
                          'Delete Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Delete Account',
            style: TextStyle(color: Colors.black38),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black45,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal),
                  ],
                ),
                child: Center(
                  child: Text('Cancel',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              onTap: () {
                AppConstant.email = "";
                AppConstant.name = "";
                AppConstant.age = "";
                AppConstant.gender = "";
                Get.offAll(LoginScreen());
              },
              child: Container(
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightGreen,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal),
                  ],
                ),
                //
                ///
                /// //
                child: Center(
                  child: Text('Confirm',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            )
          ],
        );
      },
    );
  }
}
