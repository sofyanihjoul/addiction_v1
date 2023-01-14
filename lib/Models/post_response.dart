// To parse this JSON data, do
//
//     final postResponse = postResponseFromJson(jsonString);

import 'dart:convert';

PostResponse? postResponseFromJson(String str) =>
    PostResponse.fromJson(json.decode(str));

String postResponseToJson(PostResponse? data) => json.encode(data!.toJson());

class PostResponse {
  PostResponse({
    this.isSuccess,
    this.data,
    this.messages,
  });

  bool? isSuccess;
  int? data;
  dynamic messages;

  factory PostResponse.fromJson(Map<String, dynamic> json) => PostResponse(
        isSuccess: json["isSuccess"],
        data: json["data"],
        messages: json["messages"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "data": data,
        "messages": messages,
      };
}
