import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.hovered))
                return backgroundColor.withOpacity(0.04);
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed))
                return backgroundColor.withOpacity(0.12);
              return null;
            },
          ),
        ),
      ),
    );
  }
}

class MySearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Set the desired width
      height: 50, // Set the desired height
      // padding: EdgeInsets.symmetric(horizontal: 10), // Add padding if needed
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1), // Background color
        borderRadius: BorderRadius.circular(20), // Border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.white),
              suffixIcon: Icon(Icons.send, color: Colors.white)),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
