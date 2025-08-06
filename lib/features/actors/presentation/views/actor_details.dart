import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/style/widgets/go_button.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';


import '../../../../core/style/text_style.dart';
import '../cubits/actors_cubit.dart';
import '../cubits/actors_states.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/image_slider.dart';

class ActorDetails extends StatefulWidget {
  const ActorDetails({required this.actor,super.key});
  final ActorModel? actor;

  @override
  State<ActorDetails> createState() => _ActorDetailsState();
}

class _ActorDetailsState extends State<ActorDetails> {
  late     final cubit = context.read<ActorsCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getActorDetails(widget.actor!.id??0);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: HomeAppBar(
        title: "Actor Details",
      ),
      body: BlocBuilder<ActorsCubit, ActorsStates>(
        buildWhen: (previous, current) =>previous!=current,
        builder: (context, state) {

          //final actor = state is SuccessActorsStates ? cubit.actorDetails : null;
         print("actor2 is to json ${cubit.actorDetails ?.toJson()}");
          return Skeletonizer(
            enabled: state is LoadingActorsStates,
            effect: ShimmerEffect(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              duration: const Duration(milliseconds: 1000),
            ),
            child: Container(
              height: uiHeight.h,
              width: uiWidth.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [secondFontColor, secondPrimaryColor, primaryColor],
                  stops: [0.0, 0.6, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  Expanded(child: SingleChildScrollView(
                    child:
                    Column(
                      children: [
                        const ImageSlider(), // You can also wrap this in Skeletonizer or show placeholder image
                        SizedBox(height: 30.h),

                        Text(
                          cubit.actorDetails?.name ?? "Loading Name",
                          style: TextStyles.bold16,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          cubit.actorDetails?.knownForDepartment ?? "Loading Department",
                          style: TextStyles.bold16white.copyWith(color: fontColor),
                        ),
                        const SizedBox(height: 16),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            cubit.actorDetails?.biography ??
                                "Loading description description description \nLoading description description",
                            textAlign: TextAlign.center,
                            style:
                            TextStyles.bold16white.copyWith(color: fontColor),
                          ),
                        ),



                      ],
                    ),
                  )),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: GoButton(
                      fun: () => context.pop(),
                      titleKey: backBtn,
                      btColor: secondFontColor,
                      textColor: primaryColor,
                    ),
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

