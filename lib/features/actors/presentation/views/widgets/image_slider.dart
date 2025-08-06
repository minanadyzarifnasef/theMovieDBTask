import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/routing/routes.dart';
import 'package:themoviedbtask/core/style/widgets/loader.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_cubit.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return slider.CarouselSlider.builder(
      itemCount: 3,
      options: slider.CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        autoPlay: false,
      ),
      itemBuilder: (context, index, realIndex) {
        String imageUrl = "${serverImgUrl}${context.read<ActorsCubit>().actorDetails?.profilePath}";

        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
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
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () => context.pushNamed(
                    Routes.fullScreenImageViewer,
                    arguments: imageUrl,
                  ),
                  child: Icon(Icons.fullscreen, color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
