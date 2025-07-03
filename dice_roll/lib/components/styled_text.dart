import 'package:flutter/material.dart';

class StyledText extends StatefulWidget {
  const StyledText({super.key, required this.text});

  final String text;

  @override
  State<StyledText> createState() => _StyledTextState();
}

class _StyledTextState extends State<StyledText> {
  bool _isClicked = false;

  void _handleTap() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        color: _isClicked ? Colors.white : Colors.blueAccent,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 28,
            color: _isClicked ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}
