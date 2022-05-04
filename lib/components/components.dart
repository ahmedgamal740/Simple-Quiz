import 'package:flutter/material.dart';

import 'constants.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50,
  Color color = primaryColor,
  required VoidCallback onPressed,
  required String text,
  bool isStart = true,
}) => Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    borderRadius: isStart? const BorderRadiusDirectional.only(
      topStart: Radius.circular(20),
      bottomEnd: Radius.circular(20),
    ) : BorderRadiusDirectional.circular(20),
    color: Colors.amber,
  ),
  child: MaterialButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(
          color: Colors.white
      ),
    ),
  ),
);