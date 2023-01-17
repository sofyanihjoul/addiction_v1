import 'package:http/http.dart' as http;

import '../Models/doctors_model.dart';
import '../Models/user_model.dart';

Future<UserModel> getUserProfile(int userID) async {
  try {
    final response =
        await http.get(Uri.parse('http://154.53.58.222:8889/api/user/Get'));

    if (response.statusCode == 200) {
      // If the server did return
      var users = doctorsModelFromJson(response.body);

      UserModel user = UserModel(isSuccess: true);
      user.data = users.data!.where((obj) => obj.userId == userID).first;
      return user;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}

/// sp static
Future<DoctorsModel> getDoctorBySp(int spId) async {
  try {
    final response =
        await http.get(Uri.parse('http://154.53.58.222:8889/api/user/Get'));

    if (response.statusCode == 200) {
      // If the server did return
      var users = doctorsModelFromJson(response.body);
      DoctorsModel model = DoctorsModel(isSuccess: true);
      model.data = users.data!
          .where((element) => element.specialityTypeId == spId)
          .toList();
      return model;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}

Future<DoctorsModel> getDoctorsForHomePage(int userID) async {
  try {
    final response = await http.get(Uri.parse(
        'http://154.53.58.222:8889/api/user/getUserByUserType?UserTypeId=$userID'));

    if (response.statusCode == 200) {
      // If the server did return
      return doctorsModelFromJson(response.body);

      ///addictiontypesFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  } catch (e) {
    rethrow;
  }
}
