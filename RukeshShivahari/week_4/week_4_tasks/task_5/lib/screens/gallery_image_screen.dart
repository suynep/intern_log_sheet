import 'package:flutter/material.dart';
import 'package:task_5/widgets/avatar_row_widget.dart';
import 'package:task_5/widgets/responsive_gallery_grid_widget.dart';
import '../models/gallery_image.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  final List<GalleryImage> images = List.generate(
    12,
    (i) => GalleryImage(
      url: "https://picsum.photos/300/300?random=$i",
      author: "User $i",
    ),
  );

  @override
  void dispose() {
    // Memory management example
    PaintingBinding.instance.imageCache.clearLiveImages();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Image Gallery")),

      body: Column(
        children: [

          /// Circular avatars section
          AvatarRowWidget(images: images),

          Expanded(
            child: ResponsiveGalleryGridWidget(
              images: images,
              screenWidth: width,
            ),
          ),
        ],
      ),
    );
  }
}