import 'faq_model.dart';
import 'review_data.dart';
import 'service_extra.dart';
import 'translation_model.dart';

class ServiceModel {
  int? id;
  String? slug;
  int? categoryId;
  int? shopId;
  int? gender;
  String? status;
  num? price;
  num? totalPrice;
  num? interval;
  num? pause;
  String? type;
  num? commissionFee;
  String? img;
  DateTime? createdAt;
  DateTime? updatedAt;
  Translation? translation;
  List<Galleries>? galleries;
  List<ServiceExtra>? extras;
  List<ServiceExtra>? selectExtras;
  List<FaqModel>? faqs;

  ServiceModel({
    this.id,
    this.slug,
    this.categoryId,
    this.shopId,
    this.gender,
    this.status,
    this.price,
    this.totalPrice,
    this.interval,
    this.pause,
    this.type,
    this.commissionFee,
    this.img,
    this.createdAt,
    this.updatedAt,
    this.translation,
    this.galleries,
    this.extras,
    this.selectExtras,
    this.faqs,
  });

  ServiceModel copyWith({
    int? id,
    String? slug,
    int? categoryId,
    int? shopId,
    int? gender,
    String? status,
    num? price,
    num? totalPrice,
    num? interval,
    num? pause,
    String? type,
    num? commissionFee,
    String? img,
    DateTime? createdAt,
    DateTime? updatedAt,
    Translation? translation,
    List<Galleries>? galleries,
    List<ServiceExtra>? extras,
    List<ServiceExtra>? selectExtras,
    List<FaqModel>? faqs,
  }) =>
      ServiceModel(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        categoryId: categoryId ?? this.categoryId,
        shopId: shopId ?? this.shopId,
        gender: gender ?? this.gender,
        status: status ?? this.status,
        price: price ?? this.price,
        totalPrice: totalPrice ?? this.totalPrice,
        interval: interval ?? this.interval,
        pause: pause ?? this.pause,
        type: type ?? this.type,
        commissionFee: commissionFee ?? this.commissionFee,
        img: img ?? this.img,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        translation: translation ?? this.translation,
        galleries: galleries ?? this.galleries,
        extras: extras ?? this.extras,
        selectExtras: selectExtras ?? this.selectExtras,
        faqs: faqs ?? this.faqs,
      );

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        id: json["id"],
        slug: json["slug"],
        categoryId: json["category_id"],
        shopId: json["shop_id"],
        gender: json["gender"],
        status: json["status"],
        price: json["price"],
        totalPrice: json["min_price"],
        interval: json["interval"],
        pause: json["pause"],
        type: json["type"],
        commissionFee: json["commission_fee"],
        img: json["img"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        galleries: json["galleries"] == null
            ? []
            : List<Galleries>.from(
                json["galleries"]!.map((x) => Galleries.fromJson(x))),
        extras: json["service_extras"] == null
            ? []
            : List<ServiceExtra>.from(
                json["service_extras"]!.map((x) => ServiceExtra.fromJson(x))),
        faqs: json["service_faqs"] == null
            ? []
            : List<FaqModel>.from(
                json["service_faqs"]!.map((x) => FaqModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "category_id": categoryId,
        "shop_id": shopId,
        "status": status,
        "price": price,
        "total_price": totalPrice,
        "interval": interval,
        "pause": pause,
        "type": type,
        "commission_fee": commissionFee,
        "img": img,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "translation": translation?.toJson(),
        "galleries": galleries == null
            ? []
            : List<dynamic>.from(galleries!.map((x) => x.toJson())),
        "service_extras": extras == null
            ? []
            : List<dynamic>.from(extras!.map((x) => x.toJson())),
        "service_faqs": faqs == null
            ? []
            : List<dynamic>.from(faqs!.map((x) => x.toJson())),
      };
}
