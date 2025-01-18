import 'package:flutter/material.dart';

class CoursesItem extends StatelessWidget {
  const CoursesItem({
    super.key,
    this.onPressed,
    required this.courseTitle,
    required this.imagePath,
  });
  final void Function()? onPressed;
  final String courseTitle, imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imagePath,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff104ad2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              courseTitle.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
