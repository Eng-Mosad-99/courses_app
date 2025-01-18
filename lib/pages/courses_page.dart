import 'package:flutter/material.dart';
import 'course_model.dart'
import '../widgets/courses_item.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff104ad2),
        title: const Text(
          'Courses App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => CoursesItem(
            courseTitle: coursesList[index].coursesTitle,
            imagePath: 'assets/Android.jpeg',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
