import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:lists_together/config/assets.dart';
import 'package:lists_together/domain/models/user/user.dart';

class LocalDataService {
  Future<User> getUserById(int userId) async {
    final json = await _loadStringAsset(Assets.users);
    return json
        .map<User>(User.fromJson)
        .toList()
        .firstWhere((User user) => user.id == userId);
  }

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
