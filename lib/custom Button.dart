import 'package:flutter/material.dart';

ElevatedButton CustomElevatedButton({
  required String title,
  required void Function()? onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,       // لون النص أو الأيقونة
      backgroundColor: Colors.deepOrange,  // لون الخلفية
    ),
    onPressed: onPressed,
    child: Text(title),
  );
}
