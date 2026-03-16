
import 'package:flutter/material.dart';
import '../models/gallery_image.dart';

class AvatarRowWidget extends StatelessWidget {
  final List<GalleryImage> images;

  const AvatarRowWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: images.length,
        itemBuilder: (context, index) {
          final image = images[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ClipOval(
              child: Image.network(
                image.url,
                width: 60,
                height: 60,
                fit: BoxFit.cover,

                errorBuilder: (_, __, ___) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.grey,
                  child: const Icon(Icons.person),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}