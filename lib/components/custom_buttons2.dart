import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String text;
  final ImageProvider<Object> image;

  const MyCustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            
            colorFilter: ColorFilter.mode(const Color(0xFF2196F3).withOpacity(0.5), BlendMode.dstATop)),
          color: const Color(0xFF2196F3),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
