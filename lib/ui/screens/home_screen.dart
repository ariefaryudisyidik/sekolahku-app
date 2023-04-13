import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sekolahku/ui/components/student_list.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          FlutterNativeSplash.remove(),
        });
  }

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
