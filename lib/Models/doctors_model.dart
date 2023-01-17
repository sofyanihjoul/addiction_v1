// To parse this JSON data, do
//
//     final doctorsModel = doctorsModelFromJson(jsonString);

import 'dart:convert';

import 'package:addiction_app_v1/Models/user_model.dart';

DoctorsModel doctorsModelFromJson(String str) =>
    DoctorsModel.fromJson(json.decode(str));

String doctorsModelToJson(DoctorsModel data) => json.encode(data.toJson());

class DoctorsModel {
  DoctorsModel({
    required this.isSuccess,
    this.data,
    this.messages,
  });

  bool isSuccess;
  List<User>? data;
  dynamic messages;

  factory DoctorsModel.fromJson(Map<String, dynamic> json) => DoctorsModel(
        isSuccess: json["isSuccess"],
        data: json["data"] == null
            ? null
            : List<User>.from(json["data"].map((x) => User.fromJson(x))),
        messages: json["messages"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess == null ? null : isSuccess,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "messages": messages,
      };
}

class Datum {
  Datum({
    this.userId,
    this.password,
    this.fname,
    this.mname,
    this.lname,
    this.fullName,
    this.email,
    this.phone,
    this.address,
    this.age,
    this.gender,
    this.nationality,
    this.religion,
    this.isActive,
    this.addictionTypeId,
    this.addictionTypeName,
    this.userTypeId,
    this.userType,
    this.specialityTypeId,
    this.specialityType,
    this.typeOfDiseaseId,
    this.typeOfDisease,
    this.approve,
    this.hobby,
    this.dateTime,
    this.userRate,
    this.userTypesSelectList,
    this.specialityTypeSelectList,
    this.diseaseSelectList,
    this.addictionTypeSelectList,
  });

  int? userId;
  String? password;
  String? fname;
  String? mname;
  String? lname;
  dynamic fullName;
  String? email;
  int? phone;
  String? address;
  int? age;
  String? gender;
  String? nationality;
  String? religion;
  bool? isActive;
  int? addictionTypeId;
  dynamic addictionTypeName;
  int? userTypeId;
  dynamic userType;
  int? specialityTypeId;
  dynamic specialityType;
  dynamic typeOfDiseaseId;
  dynamic typeOfDisease;
  bool? approve;
  String? hobby;
  DateTime? dateTime;
  dynamic userRate;
  dynamic userTypesSelectList;
  dynamic specialityTypeSelectList;
  dynamic diseaseSelectList;
  dynamic addictionTypeSelectList;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        userId: json["userId"] == null ? null : json["userId"],
        password: json["password"] == null ? null : json["password"],
        fname: json["fname"] == null ? null : json["fname"],
        mname: json["mname"] == null ? null : json["mname"],
        lname: json["lname"] == null ? null : json["lname"],
        fullName: json["fullName"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"],
        age: json["age"] == null ? null : json["age"],
        gender: json["gender"],
        nationality: json["nationality"],
        religion: json["religion"] == null ? null : json["religion"],
        isActive: json["isActive"] == null ? null : json["isActive"],
        addictionTypeId:
            json["addictionTypeId"] == null ? null : json["addictionTypeId"],
        addictionTypeName: json["addictionTypeName"],
        userTypeId: json["userTypeId"] == null ? null : json["userTypeId"],
        userType: json["userType"],
        specialityTypeId:
            json["specialityTypeId"] == null ? null : json["specialityTypeId"],
        specialityType: json["specialityType"],
        typeOfDiseaseId: json["typeOfDiseaseId"],
        typeOfDisease: json["typeOfDisease"],
        approve: json["approve"] == null ? null : json["approve"],
        hobby: json["hobby"],
        dateTime:
            json["dateTime"] == null ? null : DateTime.parse(json["dateTime"]),
        userRate: json["userRate"],
        userTypesSelectList: json["userTypesSelectList"],
        specialityTypeSelectList: json["specialityTypeSelectList"],
        diseaseSelectList: json["diseaseSelectList"],
        addictionTypeSelectList: json["addictionTypeSelectList"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId == null ? null : userId,
        "password": password == null ? null : password,
        "fname": fname == null ? null : fname,
        "mname": mname == null ? null : mname,
        "lname": lname == null ? null : lname,
        "fullName": fullName,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "address": address,
        "age": age == null ? null : age,
        "gender": gender,
        "nationality": nationality,
        "religion": religion == null ? null : religion,
        "isActive": isActive == null ? null : isActive,
        "addictionTypeId": addictionTypeId == null ? null : addictionTypeId,
        "addictionTypeName": addictionTypeName,
        "userTypeId": userTypeId == null ? null : userTypeId,
        "userType": userType,
        "specialityTypeId": specialityTypeId == null ? null : specialityTypeId,
        "specialityType": specialityType,
        "typeOfDiseaseId": typeOfDiseaseId,
        "typeOfDisease": typeOfDisease,
        "approve": approve == null ? null : approve,
        "hobby": hobby,
        "dateTime": dateTime == null ? null : dateTime!.toIso8601String(),
        "userRate": userRate,
        "userTypesSelectList": userTypesSelectList,
        "specialityTypeSelectList": specialityTypeSelectList,
        "diseaseSelectList": diseaseSelectList,
        "addictionTypeSelectList": addictionTypeSelectList,
      };
}
