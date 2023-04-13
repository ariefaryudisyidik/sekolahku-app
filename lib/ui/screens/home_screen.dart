import 'package:flutter/material.dart';
import 'package:sekolahku/ui/components/student_list.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SekolahKu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/formScreen', arguments: null);
        },
      ),
      body: const StudentList(),
    );
  }
}
