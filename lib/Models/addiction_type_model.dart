// To parse this JSON data, do
//
//     final addictiontypes = addictiontypesFromJson(jsonString);

import 'dart:convert';

Addictiontypes? addictiontypesFromJson(String str) =>
    Addictiontypes.fromJson(json.decode(str));

String addictiontypesToJson(Addictiontypes? data) =>
    json.encode(data!.toJson());

class Addictiontypes {
  Addictiontypes({
    this.isSuccess,
    this.data,
    this.messages,
  });

  bool? isSuccess;
  List<Datum?>? data;
  dynamic messages;

  factory Addictiontypes.fromJson(Map<String, dynamic> json) => Addictiontypes(
        isSuccess: json["isSuccess"],
        data: json["data"] == null
            ? []
            : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        messages: json["messages"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x!.toJson())),
        "messages": messages,
      };
}

class Datum {
  Datum({
    this.addictionTypeId,
    this.addictionTypeName,
    this.isDelete,
    this.isActive,
    this.dateTime,
  });

  int? addictionTypeId;
  String? addictionTypeName;
  bool? isDelete;
  bool? isActive;
  String? dateTime;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        addictionTypeId: json["addictionTypeId"],
        addictionTypeName: json["addictionTypeName"],
        isDelete: json["isDelete"],
        isActive: json["isActive"],
        dateTime: json["dateTime"],
      );

  Map<String, dynamic> toJson() => {
        "addictionTypeId": addictionTypeId,
        "addictionTypeName": addictionTypeName,
        "isDelete": isDelete,
        "isActive": isActive,
        "dateTime": dateTime,
      };
}
