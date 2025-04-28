import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServiceProduct {
  static const String baseUrl = 'https://api.restful-api.dev/objects';

  static Future<List<Map<String, dynamic>>> getProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.cast<Map<String, dynamic>>();
    }
    return [];
  }

  static Future<void> createProduct(String name) async {
    await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name}),
    );
  }

  static Future<void> updateProduct(String id, String name) async {
    await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name}),
    );
  }

  static Future<void> deleteProduct(String id) async {
    await http.delete(Uri.parse('$baseUrl/$id'));
  }
}
