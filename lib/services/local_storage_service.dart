import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String favoritesKey = 'favorites';

  Future<void> addToFavorites(Map<String, dynamic> product) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> favorites =
        prefs.getStringList(favoritesKey) ?? [];

    final bool exists = favorites.any((item) {
      final decoded = jsonDecode(item) as Map<String, dynamic>;
      return decoded['id'] == product['id'];
    });

    if (!exists) {
      favorites.add(jsonEncode(product));
      await prefs.setStringList(favoritesKey, favorites);
    }
  }

  Future<List<Map<String, dynamic>>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> favorites =
        prefs.getStringList(favoritesKey) ?? [];

    return favorites
        .map((item) => jsonDecode(item) as Map<String, dynamic>)
        .toList();
  }

  Future<void> clearFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(favoritesKey);
  }
}
