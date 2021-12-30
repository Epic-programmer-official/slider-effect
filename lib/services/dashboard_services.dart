import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shimmer_effect_app/models/character_model.dart';
import 'package:shimmer_effect_app/utils/api_constant.dart';

class DashboardService {
  Future<List<CharacterModel>?> getCharactersDetails() async {
    final response = await http.get(ApiConstants.getCharacters);

    final charactersList =
        CharacterResponseModel.fromJson(json.decode(response.body)).results;

    return charactersList;
  }
}
