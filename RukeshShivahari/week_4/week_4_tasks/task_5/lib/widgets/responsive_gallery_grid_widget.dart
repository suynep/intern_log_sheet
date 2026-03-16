import 'package:flutter/material.dart';
import 'package:task_5/widgets/gallery_image_tile_widget.dart';
import '../models/gallery_image.dart';

class ResponsiveGalleryGridWidget extends StatelessWidget {
  final List<GalleryImage> images;
  final double screenWidth;

  const ResponsiveGalleryGridWidget({
    super.key,
    required this.images,
    required this.screenWidth,
  });

  int getCrossAxisCount() {
    if (screenWidth > 900) return 5; // desktop
    if (screenWidth > 600) return 3; // tablet
    return 2; // mobile
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getCrossAxisCount(),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return GalleryImageTileWidget(image: images[index]);
      },
    );
  }
}