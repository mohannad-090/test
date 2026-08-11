import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String text;
  const CustomContainer({super.key, required this.text});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int count = 0;

  void increment() => setState(() => count++);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(widget.text, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text('$count', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: increment,
            child: const Text('+1'),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}