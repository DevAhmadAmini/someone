// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getNews() async {
    final response = await Dio().get(
      "https://timeapi.io/api/Time/current/coordinate?latitude=34.9&longitude=69",
    );

    final body = response.data;

    if (response.statusCode == 200) {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Row(
            children: [
              Text("${body['timeZone']}"),
              const SizedBox(width: 10),
              Text("${body['year']}"),
            ],
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Hello"),
        ],
      ),
    );
  }
}

void moveBack() {
  print("The Vehicle has been moved away");
}
