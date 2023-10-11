import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/registration_screen.dart';

class Terms extends StatefulWidget {
  Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool checkValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,
        title: Text('Terms & Conditions',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),centerTitle: true,
        leading: InkWell(onTap:(){Get.back();},
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          children: [
            Container(
              child: Text(AppConstant.termsandConditions),

            ),
            SizedBox(height: 10,),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
