import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/routing/routes.dart';
import 'package:themoviedbtask/core/style/widgets/loader.dart';
import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_cubit.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_states.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/style/text_style.dart';
import 'widgets/home_app_bar.dart';

class ActorsListScreen extends StatefulWidget {
  const ActorsListScreen({super.key});

  @override
  State<ActorsListScreen> createState() => _ActorsListScreenState();
}

class _ActorsListScreenState extends State<ActorsListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollListener();
  }

  void scrollListener() {
    _scrollController.addListener(() {
      final cubit = context.read<ActorsCubit>();
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 100) {
        cubit.fetchNextPageIfAvailable();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ActorsCubit>();
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: HomeAppBar(
        title: welcomeVisitor,
      ),
      body: BlocBuilder<ActorsCubit, ActorsStates>(
        builder: (context, state) {
          final actors = cubit.actorResponseModel?.actorsList ?? [];
          final List<ActorModel> actorsToDisplay = (state is LoadingActorsStates && actors.isEmpty)
              ? List.generate(
                  10,
                  (index) => ActorModel(
                    id: 0,
                    name: "Loading Name",
                    knownForDepartment: "Loading Department",
                    profilePath: "",
                  ),
                )
              : actors;

          return Skeletonizer(
            enabled: state is LoadingActorsStates && actors.isEmpty,
            enableSwitchAnimation: true,
            effect: ShimmerEffect(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              duration: const Duration(milliseconds: 1000),
            ),
            child: Padding(
              padding: EdgeInsets.all(horizontalPadding),
              child: ListView.separated(
                itemCount: actorsToDisplay.length + (cubit.isLoadingMore ? 1 : 0),
                controller: _scrollController,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index >= actorsToDisplay.length) {
                    // Show loading indicator at the end during pagination
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(
                          child: Loader(
                        color: primaryColor,
                      )),
                    );
                  }

                  final actor = actorsToDisplay[index];

                  return GestureDetector(
                    onTap: state is LoadingActorsStates
                        ? null // disable tap during loading
                        : (){

                      context.pushNamed(Routes.actorDetails,arguments: actor );
                    },
                    child: Card(
                      surfaceTintColor: primaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(horizontalPadding / 1.5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundImage: (actor.profilePath?.isNotEmpty ?? false) ? NetworkImage("$serverImgUrl/${actor.profilePath}") : null,
                              backgroundColor: Colors.grey[300],
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    actor.name ?? "",
                                    style: TextStyles.bold16,
                                  ),
                                  Text(
                                    actor.knownForDepartment ?? "",
                                    style: TextStyles.bold16white.copyWith(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 8.h),
              ),
            ),
          );
        },
      ),
    );
  }
}
