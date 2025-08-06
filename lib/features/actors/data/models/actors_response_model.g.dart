// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorResponseModel _$ActorResponseModelFromJson(Map<String, dynamic> json) =>
    ActorResponseModel(
      page: (json['page'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      actorsList: (json['results'] as List<dynamic>?)
          ?.map((e) => ActorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActorResponseModelToJson(ActorResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.actorsList,
    };

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) => ActorModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      knownForDepartment: json['known_for_department'] as String?,
      profilePath: json['profile_path'] as String?,
      biography: json['biography'] as String?,
      birthday: json['birthday'] as String?,
      place_of_birth: json['place_of_birth'] as String?,
    );

Map<String, dynamic> _$ActorModelToJson(ActorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
      'biography': instance.biography,
      'birthday': instance.birthday,
      'place_of_birth': instance.place_of_birth,
    };
