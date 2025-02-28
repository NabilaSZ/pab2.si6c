import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiService {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = 'd69a191d72a18d8f03f968689c3bb466';
  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response = await
    http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response = await
    http.get(Uri.parse("$baseUrl/trending/movie/week?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response = await
    http.get(Uri.parse("$baseUrl/movie/popular?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['results']);
  }
}