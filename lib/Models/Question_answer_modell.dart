// To parse this JSON data, do
//
//     final questionanswermodel = questionanswermodelFromJson(jsonString);

import 'dart:convert';

Questionanswermodel? questionanswermodelFromJson(String str) =>
    Questionanswermodel.fromJson(json.decode(str));

String questionanswermodelToJson(Questionanswermodel? data) =>
    json.encode(data!.toJson());

class Questionanswermodel {
  Questionanswermodel({
    this.isSuccess,
    this.data,
    this.messages,
  });

  bool? isSuccess;
  List<Datum?>? data;
  dynamic messages;

  factory Questionanswermodel.fromJson(Map<String, dynamic> json) =>
      Questionanswermodel(
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
    this.id,
    this.text,
    this.answers,
  });

  int? id;
  String? text;
  List<Answer?>? answers;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        text: json["text"],
        answers: json["answers"] == null
            ? []
            : List<Answer?>.from(
                json["answers"]!.map((x) => Answer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "answers": answers == null
            ? []
            : List<dynamic>.from(answers!.map((x) => x!.toJson())),
      };
}

class Answer {
  Answer({
    this.answerId,
    this.categoryId,
    this.answerText,
    this.isActive,
    this.isDelete,
    this.dateTime,
    this.answerPoint,
    this.questionId,
  });

  int? answerId;
  int? categoryId;
  String? answerText;
  dynamic isActive;
  dynamic isDelete;
  dynamic dateTime;
  int? answerPoint;
  int? questionId;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        answerId: json["answerId"],
        categoryId: json["categoryId"],
        answerText: json["answerText"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        dateTime: json["dateTime"],
        answerPoint: json["answerPoint"],
        questionId: json["questionId"],
      );

  Map<String, dynamic> toJson() => {
        "answerId": answerId,
        "categoryId": categoryId,
        "answerText": answerText,
        "isActive": isActive,
        "isDelete": isDelete,
        "dateTime": dateTime,
        "answerPoint": answerPoint,
        "questionId": questionId,
      };
}
