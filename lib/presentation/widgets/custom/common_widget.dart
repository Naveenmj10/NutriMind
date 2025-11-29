import 'package:flutter/material.dart';

Widget topBarButton(String text, {Color bg = Colors.white, Color fg = Colors.black}) {
  return Container(
    height: 35,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: bg,
      borderRadius: BorderRadius.circular(6.85),
      border: Border.all(
        width: 1,
        color: Color(0xffFFFFFF)
      )
    ),
    child: Text(
      text,
      style: TextStyle(
        color: fg,        // <-- FIXED
        fontWeight: FontWeight.w600,
        fontSize: 9.89,
      ),
    ),
  );
}

InputDecoration darkInputDecoration({required String hint, Widget? prefix}) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: hint,
    hintStyle: const TextStyle(color: Color(0xffA9A7A7), fontSize: 14, fontWeight: FontWeight.w500),
    prefixIcon: prefix,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffffffff))
    ),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffffffff))
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffffffff))
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    fillColor: Color(0xff000000),
    filled: true
  );
}

Widget socialButton(String label, {required String iconPath}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.symmetric(horizontal: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

