import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;

  const MainButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80)
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
