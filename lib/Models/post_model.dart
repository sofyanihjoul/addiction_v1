// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    required this.isSuccess,
    this.data,
    this.messages,
  });

  bool isSuccess;
  List<Datum>? data;
  dynamic messages;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        isSuccess: json["isSuccess"] == null ? null : json["isSuccess"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
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
    this.postId,
    this.body,
    this.isActive,
    this.isDelete,
    this.dateTime,
    this.userId,
    this.editDate,
  });

  int? postId;
  String? body;
  bool? isActive;
  bool? isDelete;
  DateTime? dateTime;
  int? userId;
  DateTime? editDate;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        postId: json["postId"] == null ? null : json["postId"],
        body: json["body"] == null ? null : json["body"],
        isActive: json["isActive"] == null ? null : json["isActive"],
        isDelete: json["isDelete"] == null ? null : json["isDelete"],
        dateTime:
            json["dateTime"] == null ? null : DateTime.parse(json["dateTime"]),
        userId: json["userId"] == null ? null : json["userId"],
        editDate:
            json["editDate"] == null ? null : DateTime.parse(json["editDate"]),
      );

  Map<String, dynamic> toJson() => {
        "postId": postId == null ? null : postId,
        "body": body == null ? null : body,
        "isActive": isActive == null ? null : isActive,
        "isDelete": isDelete == null ? null : isDelete,
        "dateTime": dateTime == null ? null : dateTime!.toIso8601String(),
        "userId": userId == null ? null : userId,
        "editDate": editDate == null ? null : editDate!.toIso8601String(),
      };
}
