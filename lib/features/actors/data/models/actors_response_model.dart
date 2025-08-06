import 'package:json_annotation/json_annotation.dart';

part 'actors_response_model.g.dart';

@JsonSerializable()
class ActorResponseModel {

  int? page;

  @JsonKey(name: 'total_pages')
  int? totalPages;


  @JsonKey(name: 'total_results')
  int? total_results;

  @JsonKey(name: 'results')
  List<ActorModel>? actorsList;


  ActorResponseModel({this.page,this.total_results,this.totalPages,this.actorsList});


  factory ActorResponseModel.fromJson(Map<String, dynamic> json) => _$ActorResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ActorResponseModelToJson(this);

}

@JsonSerializable()
class ActorModel{


  int? id;

  String? name;

  @JsonKey(name: 'known_for_department')
  String? knownForDepartment;

  @JsonKey(name: 'profile_path')
  String? profilePath;


  ActorModel({this.id,this.name,this.knownForDepartment,this.profilePath});

  factory ActorModel.fromJson(Map<String, dynamic> json) => _$ActorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ActorModelToJson(this);

}