import 'package:flutter/material.dart';

import '../resources/task_colors.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SecondaryButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      foregroundColor: TaskColors.primaryBlue,
      backgroundColor: TaskColors.secondaryBlue,
      elevation: 0,
      highlightElevation: 0,
      child: Text(text, style: TextStyle(fontSize: 16),),
    );
  }
}
