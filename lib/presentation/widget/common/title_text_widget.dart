import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0), child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20)));
  }
}
