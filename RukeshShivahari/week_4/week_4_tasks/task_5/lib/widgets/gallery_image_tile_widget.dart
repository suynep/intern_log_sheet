import 'package:flutter/material.dart';
import '../models/gallery_image.dart';

class GalleryImageTileWidget extends StatelessWidget {
  final GalleryImage image;

  const GalleryImageTileWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        image.url,
        fit: BoxFit.cover,

        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;

          return const Center(
            child: CircularProgressIndicator(),
          );
        },

        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(
                Icons.broken_image,
                size: 40,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}