import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown<T> extends StatelessWidget {
  final List<T> items;
  String hintText;
  Widget? prefixIcon;
  TextStyle textstyle;
  Widget? widget;
  final void Function(T?) onChanged;
  CustomDropDown({
    Key? key,
    required this.textstyle,
    required this.items,
    required this.hintText,
    this.prefixIcon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
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
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(
          hintText: hintText,
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
        items: items.map((T item) {
          return DropdownMenuItem<T>(
            enabled: true,
            value: item,
            child: Text(
              style: textstyle,
              item.toString(),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        validator: (value) {
          if (value == null) {
            return 'Please select an option';
          }
          return null;
        },
      ),
    );
  }
}
