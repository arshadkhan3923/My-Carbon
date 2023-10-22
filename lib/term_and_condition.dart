import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/registration_screen.dart';

class TermAndCondition extends StatefulWidget {
  TermAndCondition({super.key});

  @override
  State<TermAndCondition> createState() => _TermAndConditionState();
}

class _TermAndConditionState extends State<TermAndCondition> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            "assets/Back Arrow.png",
            height: 30.h,
            width: 30.w,
            // fit: BoxFit.fill,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(AppConstant.termsandConditions),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: checkValue,
                      onChanged: (value) {
                        checkValue = value!;
                        if (value) {
                          Get.to(RegistrationScreen());
                        }
                        setState(() {});
                      }),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Agree with T&C',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
