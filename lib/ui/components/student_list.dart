import 'package:flutter/material.dart';
import 'package:sekolahku/data/model/student.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: studentList.length,
      itemBuilder: (context, index) {
        final Student student = studentList[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/detailScreen', arguments: student);
          },
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(height: 64, width: 16),
                  CircleAvatar(
                    backgroundImage: AssetImage(student.photo),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(student.fullName),
                          const SizedBox(height: 4),
                          Text(
                            student.gender,
                            style: const TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(student.degree),
                          const SizedBox(height: 8),
                          Text(student.phoneNumber),
                        ],
                      )),
                ],
              ),
              const Divider()
            ],
          ),
        );
      },
    );
  }
}
