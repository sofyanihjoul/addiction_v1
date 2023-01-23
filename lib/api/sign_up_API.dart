import 'dart:convert';
import 'package:addiction_app_v1/COMMON/constants.dart';
import 'package:addiction_app_v1/Models/addiction_type_model.dart';
import 'package:addiction_app_v1/Models/register_model.dart';
import 'package:http/http.dart' as http;
import '../Models/post_response.dart';
import '../Models/user_model.dart';

Future<Addictiontypes?> getAddictionTypes() async {
  try {
    final response = await http
        .get(Uri.parse('http://154.53.58.222:8889/api/AddictionType/Get'));

    if (response.statusCode == 200) {
      // If the server did return
      return addictiontypesFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}

Future<PostResponse?> registerUser(RegisterModel model) async {
  var response = await http.post(
    Uri.parse("http://154.53.58.222:8889/api/user/create"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "password": model.password,
      "fname": model.fName,
      "mname": model.mName,
      "lname": model.lName,
      "fullName": model.fullName,
      "email": model.email,
      "phone": model.phone,
      "age": model.age,
      "gender": model.gender,
      "approve": model.approve,
      "hobby": model.hobby,
      "addictionTypeId": model.addictionTypeId,
      "userTypeId": model.userTypeId,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var res = postResponseFromJson(response.body);
    if (res!.isSuccess!) {
      StaticValues.userId = res.data!;
    }

    return res;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<bool> login(String email, String password) async {
  var response = await http.get(
    Uri.parse(
        "http://154.53.58.222:8889/api/User/Login?Email=$email&Password=$password"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var res = userModelFromJson(response.body);
    if (res.isSuccess) {
      StaticValues.userId = res.data!.userId!;
      return true;
    }

    return false;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
