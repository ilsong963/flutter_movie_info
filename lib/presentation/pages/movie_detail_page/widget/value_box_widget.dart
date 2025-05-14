import 'package:flutter/material.dart';

class ValueBoxWidget extends StatelessWidget {
  final String title;
  final String value;

  const ValueBoxWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
          child: Column(
            children: [
              Text(value, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 4),
              Text(title, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
