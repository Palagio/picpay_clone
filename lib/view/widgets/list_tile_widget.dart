import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final String? image;
  const ListTileWidget(
      {Key? key, this.onPressed, required this.label, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: onPressed,
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: const Color(0xFFDCDCDC),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://image.similarpng.com/very-thumbnail/2020/09/3D-gold-coin-euro-clipart-PNG.png'),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
