import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
final String baseUrl = 'http://10.0.2.2:3000/api';

Future<List<dynamic>> fetchData() async {
final response = await http.get(Uri.parse('$baseUrl/data'));

if (response.statusCode == 200) {
return json.decode(response.body);
} else {
throw Exception('Failed to load data');
}
}
}