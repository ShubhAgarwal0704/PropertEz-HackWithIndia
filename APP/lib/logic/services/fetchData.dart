import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

const API_CALL =
    'https://c451-2405-201-600f-9a66-d6e8-69e8-cc34-9765.ngrok-free.app/proptEz/list-pg';

Future<List<dynamic>> fetchData() async {
  http.Response response = await http.get(Uri.parse(API_CALL));

  try {
    if (response.statusCode == 200) {
      List<dynamic> data = convert.jsonDecode(response.body);
      print(data);
      print(data[1]['id']);
      return data;
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}
