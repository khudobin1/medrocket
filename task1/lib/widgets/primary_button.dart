import 'package:flutter/material.dart';

import '../resources/task_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const PrimaryButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      foregroundColor: Colors.white,
      backgroundColor: TaskColors.primaryBlue,
      elevation: 0,
      highlightElevation: 0,
      child: Text(text, style: TextStyle(fontSize: 16),),
    );
  }
}
