import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/routing/routes.dart';
import 'package:themoviedbtask/features/actors/data/models/actors_response_model.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_cubit.dart';
import 'package:themoviedbtask/features/actors/presentation/cubits/actors_states.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/style/text_style.dart';
import 'widgets/home_app_bar.dart';
class ActorsListScreen extends StatelessWidget {
  const ActorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ActorsCubit>();
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: HomeAppBar(title: welcomeVisitor,),
      body: BlocBuilder<ActorsCubit,ActorsStates>(
        builder: (context,state){
          return Skeletonizer(
            enabled: state is LoadingActorsStates,
            enableSwitchAnimation: true,
            effect: ShimmerEffect(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              duration: Duration(milliseconds: 1000),
            ),
            child:  Padding(
              padding: EdgeInsets.all(horizontalPadding),
              child: ListView.separated(
                  itemCount: cubit.actorResponseModel?.actorsList?.length??10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var actor = cubit.actorResponseModel?.actorsList?[index]??ActorModel(id: 0,name: "Temp Name",knownForDepartment: "Temp Description",profilePath: "https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg");
                    return GestureDetector(
                      onTap: ()=>context.pushNamed(Routes.actorDetails,arguments: actor),
                      child: Card(
                        surfaceTintColor: primaryColor,

                        // width: uiWidth.w,height: 70.h,
                        // decoration: BoxDecoration(
                        //   color: Colors.red
                        // ),
                        child: Padding(
                          padding:  EdgeInsets.all(horizontalPadding/1.5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40.r,
                                backgroundImage: NetworkImage("$serverImgUrl/${actor.profilePath}"),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(actor.name??"",style: TextStyles.bold16,),
                                  Text(actor.knownForDepartment??"",style: TextStyles.bold16white.copyWith(color: Colors.black54),),
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 8.h,)
              ),
            ),
          );
        },
      ),
    );
  }
}
