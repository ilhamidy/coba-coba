import 'package:flutter/material.dart';

class Buttonmn extends StatelessWidget {
  final Widget icon;
  const Buttonmn({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.4),
      ),
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
