// To parse this JSON data, do
//
//     final quotesApi = quotesApiFromJson(jsonString);

import 'dart:convert';

List<QuotesApi> quotesApiFromJson(String str) =>
    List<QuotesApi>.from(json.decode(str).map((x) => QuotesApi.fromJson(x)));

String quotesApiToJson(List<QuotesApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuotesApi {
  String q;
  String a;
  String c;
  String h;

  QuotesApi({
    required this.q,
    required this.a,
    required this.c,
    required this.h,
  });

  factory QuotesApi.fromJson(Map<String, dynamic> json) => QuotesApi(
        q: json["q"],
        a: json["a"],
        c: json["c"],
        h: json["h"],
      );

  Map<String, dynamic> toJson() => {
        "q": q,
        "a": a,
        "c": c,
        "h": h,
      };
}
