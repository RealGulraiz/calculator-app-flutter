import 'package:flutter/material.dart';

// Button Component
class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({Key? key,
    required this.title,
    this.color= const Color(0xff2660a4),
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white,),),
            ),
          ),
        ),
      ),
    );
  }
}