import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/actors/data/models/actors_response_model.dart';


class HiveService {
  static final HiveService _instance = HiveService._internal();
  factory HiveService() => _instance;
  HiveService._internal();

  static const String _actorsBoxName = 'cache_actors';
  Box<String>? _actorsBox;

  static HiveService get instance => _instance;

  Future<void> initialize() async {
    await Hive.initFlutter();
    _actorsBox = await Hive.openBox<String>(_actorsBoxName);
  }

  Future<void> saveActorData(int pageNumber, ActorResponseModel actorResponseModel) async {
    final key = _generatePeopleKey(pageNumber);
    final jsonString = jsonEncode(actorResponseModel.toJson());
    await _actorsBox!.put(key, jsonString);


  }

  ActorResponseModel? getActorsData(int pageNumber) {
    final key = _generatePeopleKey(pageNumber);
    final jsonString = _actorsBox!.get(key);
    print("local data is $jsonString");
    if (jsonString == null) {
      return null;
    }

    try {
      final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
      return ActorResponseModel.fromJson(jsonMap);
    } catch (e) {
      _actorsBox!.delete(key);
      return null;
    }
  }

  String _generatePeopleKey(int pageNumber) {
    return 'people_page_$pageNumber';
  }
}