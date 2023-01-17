import 'dart:convert';

import 'package:addiction_app_v1/Models/send_post_model.dart';
import 'package:http/http.dart' as http;

import '../Models/post_model.dart';
import '../Models/post_response.dart';

Future<PostModel?> getPosts() async {
  try {
    final response =
        await http.get(Uri.parse('http://154.53.58.222:8889/api/Post/Get'));

    if (response.statusCode == 200) {
      // If the server did return
      return postModelFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}

Future<PostResponse?> sendPost(SendPostModel model) async {
  var response = await http.post(
    Uri.parse("http://154.53.58.222:8889/api/Post/create"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "userId": model.userId,
      "body": model.body,
      "isActive": true,
      "isDelete": false,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var res = postResponseFromJson(response.body);

    return res;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
