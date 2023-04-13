import 'package:flutter/material.dart';
import 'package:sekolahku/data/model/student.dart';
import 'package:sekolahku/ui/components/student_detail.dart';

class DetailScreen extends StatelessWidget {
  static const route = '/detailScreen';
  final Student student;
  const DetailScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Siswa'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/formScreen', arguments: student);
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: StudentDetail(student: student),
    );
  }
}
