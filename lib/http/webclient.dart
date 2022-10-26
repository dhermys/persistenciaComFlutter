import 'package:http/http.dart';

void findAll() async {
  var baseUrl = Uri.parse('http://192.168.0.173:8080/transactions');
  final Response response = await get(baseUrl);
  print(response.body);
}