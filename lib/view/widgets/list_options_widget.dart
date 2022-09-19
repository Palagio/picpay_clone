import 'package:flutter/material.dart';

class ListOptionsWidget extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final VoidCallback? onTap;
  const ListOptionsWidget({Key? key, this.icon, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 65,
          decoration: const BoxDecoration(
            color: Color(0xFF0f6e42),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Stack(children: [
            Positioned(
              left: 8,
              top: 5,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Text(
                title ?? '',
                style: const TextStyle(fontSize: 10, color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
