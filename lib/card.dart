import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final IconData icon;
  final String label;

  const card ({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade400,
          child: Icon(icon, size: 30, color: Colors.black),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
