import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'loader.dart';




class FullScreenImageViewer extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageViewer({super.key, required this.imageUrl});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.download, color: Colors.white),
            onPressed: () {
              //todo :download image hna don't forget
            },
          ),
        ],
      ),
      body: Center(
        child: InteractiveViewer(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,

            placeholder: (context, url) => Center(
              child: Loader(
                color: primaryColor,
              ), // Temporary loader
            ),
            errorWidget: (context, url, error) => Center(
              child: Icon(Icons.error, color: Colors.red),
            ),
          ),


        ),
      ),
    );
  }
}
