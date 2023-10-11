import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/HomeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Registration Complete',style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          children: [
            Container(height: 200,width: double.infinity,decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: AssetImage('assets/logo2.jpeg'),fit: BoxFit.fill)),),
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                child: InkWell(onTap: (){
                 Get.to(HomeScreen());
                },
                  child: Container(height: 40.h,width: 100.w,
                    decoration: ShapeDecoration(color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                    child: Center(child: Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
