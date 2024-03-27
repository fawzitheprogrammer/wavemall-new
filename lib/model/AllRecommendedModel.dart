// To parse this JSON data, do
//
//     final allRecommendedModel = allRecommendedModelFromJson(jsonString);

import 'dart:convert';

import 'package:wavemall/model/Meta.dart';
import 'package:wavemall/model/Product/ProductModel.dart';

AllRecommendedModel allRecommendedModelFromJson(String str) =>
    AllRecommendedModel.fromJson(json.decode(str));

String allRecommendedModelToJson(AllRecommendedModel data) =>
    json.encode(data.toJson());

class AllRecommendedModel {
  AllRecommendedModel({
    required this.data,
    required this.meta,
  });

  List<ProductModel> data;
  Meta meta;

  factory AllRecommendedModel.fromJson(Map<String, dynamic> json) {
    return AllRecommendedModel(
      data: json["data"] == null
          ? []
          : List<ProductModel>.from(
              json["data"].map((x) => ProductModel.fromJson(x))),
      meta: Meta.fromJson(json["meta"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}
