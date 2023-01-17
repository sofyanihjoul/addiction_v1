// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.isSuccess,
    this.data,
    this.messages,
  });

  bool isSuccess;
  User? data;
  dynamic messages;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        isSuccess: json["isSuccess"] == null ? null : json["isSuccess"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
        messages: json["messages"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess == null ? null : isSuccess,
        "data": data == null ? null : data!.toJson(),
        "messages": messages,
      };
}

class User {
  User({
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
  List<SelectList>? userTypesSelectList;
  List<SelectList>? specialityTypeSelectList;
  dynamic diseaseSelectList;
  List<SelectList>? addictionTypeSelectList;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"] == null ? null : json["userId"],
        password: json["password"] == null ? null : json["password"],
        fname: json["fname"] == null ? null : json["fname"],
        mname: json["mname"] == null ? null : json["mname"],
        lname: json["lname"] == null ? null : json["lname"],
        fullName: json["fullName"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        age: json["age"] == null ? null : json["age"],
        gender: json["gender"] == null ? null : json["gender"],
        nationality: json["nationality"] == null ? null : json["nationality"],
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
        hobby: json["hobby"] == null ? null : json["hobby"],
        dateTime:
            json["dateTime"] == null ? null : DateTime.parse(json["dateTime"]),
        userRate: json["userRate"],
        userTypesSelectList: json["userTypesSelectList"] == null
            ? null
            : List<SelectList>.from(
                json["userTypesSelectList"].map((x) => SelectList.fromJson(x))),
        specialityTypeSelectList: json["specialityTypeSelectList"] == null
            ? null
            : List<SelectList>.from(json["specialityTypeSelectList"]
                .map((x) => SelectList.fromJson(x))),
        diseaseSelectList: json["diseaseSelectList"],
        addictionTypeSelectList: json["addictionTypeSelectList"] == null
            ? null
            : List<SelectList>.from(json["addictionTypeSelectList"]
                .map((x) => SelectList.fromJson(x))),
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
        "address": address == null ? null : address,
        "age": age == null ? null : age,
        "gender": gender == null ? null : gender,
        "nationality": nationality == null ? null : nationality,
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
        "hobby": hobby == null ? null : hobby,
        "dateTime": dateTime == null ? null : dateTime!.toIso8601String(),
        "userRate": userRate,
        "userTypesSelectList": userTypesSelectList == null
            ? null
            : List<dynamic>.from(userTypesSelectList!.map((x) => x.toJson())),
        "specialityTypeSelectList": specialityTypeSelectList == null
            ? null
            : List<dynamic>.from(
                specialityTypeSelectList!.map((x) => x.toJson())),
        "diseaseSelectList": diseaseSelectList,
        "addictionTypeSelectList": addictionTypeSelectList == null
            ? null
            : List<dynamic>.from(
                addictionTypeSelectList!.map((x) => x.toJson())),
      };
}

class SelectList {
  SelectList({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  bool? disabled;
  dynamic group;
  bool? selected;
  String? text;
  String? value;

  factory SelectList.fromJson(Map<String, dynamic> json) => SelectList(
        disabled: json["disabled"] == null ? null : json["disabled"],
        group: json["group"],
        selected: json["selected"] == null ? null : json["selected"],
        text: json["text"] == null ? null : json["text"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "disabled": disabled == null ? null : disabled,
        "group": group,
        "selected": selected == null ? null : selected,
        "text": text == null ? null : text,
        "value": value == null ? null : value,
      };
}
