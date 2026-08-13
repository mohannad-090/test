import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? images;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const CustomContainer({
    super.key,
    this.images,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? 100,
        height: height ?? 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: images != null 
              ? DecorationImage(
                  image: AssetImage(images!),
                  fit: fit ?? BoxFit.cover,
                ) : null
        ),
        child: images == null
            ? const Icon(
                Icons.person,
                size: 50,
                color: Colors.grey,
              )
            : null,
    );
  }
}