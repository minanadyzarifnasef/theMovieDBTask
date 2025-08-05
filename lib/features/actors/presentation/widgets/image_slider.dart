import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:flutter/material.dart';
class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return slider. CarouselSlider.builder(
      itemCount: 10,
      options:slider. CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        autoPlay: false,

      ),
      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?cs=srgb&dl=pexels-vinicius-wiesehofer-289347-1130626.jpg&fm=jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),

                const Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(Icons.fullscreen, color: Colors.white),
                ),
            ],
          ),
        );
      },
    );
  }
}
