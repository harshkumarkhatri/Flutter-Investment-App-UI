import 'package:flutter/material.dart';

Widget createAccountButton({
  required String text,
  required BuildContext context,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 26,
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: const Color(
          0xff31A062,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
