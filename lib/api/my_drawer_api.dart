import 'dart:convert';

import 'package:addiction_app_v1/Models/addiction_type_model.dart';
import 'package:addiction_app_v1/Models/register_model.dart';
import 'package:http/http.dart' as http;
import '../Models/Question_answer_modell.dart';
import '../Models/post_response.dart';

//get Question
Future<Questionanswermodel?> getQuestionanswermodel() async {
  try {
    final response = await http.get(Uri.parse(
        'http://154.53.58.222:8889/api/http://154.53.58.222:8889/api/user/get'));

    if (response.statusCode == 200) {
      // If the server did return
      return questionanswermodelFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}

//Post Answer
Future<PostResponse?> senduserAnswer(
    int userId, int questionId, int answerId) async {
  var response = await http.post(
    Uri.parse("http://154.53.58.222:8889/api/AnswerdQuestion/Create"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'userId': userId,
      'questionId': questionId,
      'answerId': answerId
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return postResponseFromJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}