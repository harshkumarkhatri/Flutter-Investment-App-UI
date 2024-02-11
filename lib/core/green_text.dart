import 'package:flutter/material.dart';

Widget greeText({
  required String text,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      text,
      style: const TextStyle(
        color: Color(0xff31A062),
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
