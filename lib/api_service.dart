import 'package:dio/dio.dart';
class ApiService {
  String apiUrl = "https://jsonplaceholder.typicode.com";

  final Dio dio = Dio();
  Future<dynamic> fetchUsers() async {
    try {
      final response = await dio.get('$apiUrl/users');
      print(response.data.toString());
      return response.data;  
    } catch (error) {
      throw Exception("Error fetching users: $error");
    }
  }
}
