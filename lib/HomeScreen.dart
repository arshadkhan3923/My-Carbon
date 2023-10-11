import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mycarbon/ConstantValues.dart';
import 'package:mycarbon/login_screen.dart';
import 'package:mycarbon/t&c.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final picker= ImagePicker();

  XFile? image;

  XFile? get Image=> image;

  Future pickFileFromCamera(BuildContext context)async{

    final pickedfile=await picker.pickImage(source: ImageSource.camera);
    if(pickedfile != null){
      image=XFile(pickedfile.path);
   setState(() {

   });
      Navigator.pop(context);
      print("Path are");
      print(image);
    }

  }

  Future pickFileFromGallery(BuildContext context)async{

    final pickedfile=await picker.pickImage(source: ImageSource.gallery);
    if(pickedfile != null){
      image=XFile(pickedfile.path);
      Navigator.pop(context);
     setState(() {

     });
      print("Path are");
      print(image);
    }



  }

  void showDialogeBox(BuildContext context){
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: Container(
          height: 150.h,width: 100.w,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){pickFileFromCamera(context);}, child: Text("Camera")),
              Divider(),
              TextButton(onPressed: (){pickFileFromGallery(context);}, child: Text("Gallery")),
            ],),
        ),
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: Container(height: 66.h,
    child:
  Column(
    children: [
      Divider(),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Icon(Icons.home,size: 36,),
        Icon(Icons.file_copy),
        Icon(Icons.account_balance_wallet_rounded),
      ],),
    ],
  )),
      appBar: AppBar( backgroundColor: Colors.white,automaticallyImplyLeading: false,centerTitle: true,
        title: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),actions: [Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: CircleAvatar(radius: 20.r,backgroundColor: Colors.black,child: Icon(Icons.person,color: Colors.white,),),
        )],),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 200,width: double.infinity,decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: AssetImage('assets/logo2.jpeg'),fit: BoxFit.fill)),),

              SizedBox(height: 10,),
              Row(children: [
                InkWell(onTap: (){
                  showDialogeBox(context);

                },
                    child: CircleAvatar(radius: 30.r,backgroundColor: Colors.black38,backgroundImage:
                    AssetImage(image != null?
                        image!.path.toString():'assets/logo2.jpeg'),
                    )),
                SizedBox(width: 10,),
                Text('${AppConstant.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),),
              ],),
              SizedBox(height: 10,),
              Text('Gender : ${AppConstant.gender}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
              Text('Age : ${AppConstant.age} year',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
              Text('Email : ${AppConstant.email}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 40.w,vertical: 10.h),
                child: Column(
                  children: [
                    Center(
                      child: InkWell(onTap: (){
                        Get.to(Terms());

                       },
                        child: Container(height: 40.h,
                          decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                          child: Center(child: Text('Terms & Conditions',style: TextStyle(fontWeight: FontWeight.bold),)),),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Center(
                      child: InkWell(
                        child: InkWell(onTap: (){
                          showCustomDialog(context);

                        },
                          child: Container(height: 40.h,
                            decoration: ShapeDecoration(color: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                            child: Center(child: Text('Delete Account',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (BuildContext context) {
        return AlertDialog(


          title: Text('Delete Account',style: TextStyle(color: Colors.black38),),

          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))),
            TextButton(onPressed: (){
              AppConstant.email="";
              AppConstant.name="";
              AppConstant.age="";
              AppConstant.gender="";
              Get.offAll(LoginScreen());
            }, child: Text('Confirm',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))),

          ],
        );
      },
    );
  }
}
