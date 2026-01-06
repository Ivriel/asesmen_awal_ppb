import 'package:flutter/material.dart';
import 'API_service.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  final ApiService apiService = ApiService();

  List<dynamic> users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    try {
      final data = await apiService.fetchUsers();
      setState(() {
        users = data;
        isLoading = false;
      });
    } catch (error) {
      print('Error: $error');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Soal 7 - API"),
      ),
      body: isLoading 
      ? const Center(child: CircularProgressIndicator(),)
      : ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text('${users[index]['name']}'),
            subtitle: Text(users[index]['email']),
          );
        },
        )
    );
  }
}
