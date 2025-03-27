


import 'package:demand/domain/model/model/translation_model.dart';

class CategoriesPaginateResponse {
  CategoriesPaginateResponse({
    List<CategoryData>? data,


  }) {
    _data = data;
  }

  CategoriesPaginateResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CategoryData.fromJson(v));
      });
    }

  }

  List<CategoryData>? _data;

  CategoriesPaginateResponse copyWith({
    List<CategoryData>? data,
  }) =>
      CategoriesPaginateResponse(
        data: data ?? _data,
      );

  List<CategoryData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }

    return map;
  }
}

class CategoryData {
  CategoryData({
    int? id,
    String? uuid,
    String? keywords,
    int? parentId,
    String? type,
    String? img,
    bool? active,
    String? createdAt,
    String? updatedAt,
    Translation? translation,
    List<CategoryData>? children,
  }) {
    _id = id;
    _uuid = uuid;
    _keywords = keywords;
    _parentId = parentId;
    _type = type;
    _img = img;
    _active = active;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _translation = translation;
    _children = children;
  }

  CategoryData.fromJson(dynamic json) {
    _id = json['id'];
    _uuid = json['uuid'];
    _keywords = json['keywords'];
    _parentId = json['parent_id'];
    _type = json['type'].toString();
    _img = json['img'];
    _active = json['active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _translation = json['translation'] != null
        ? Translation.fromJson(json['translation'])
        : null;
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(CategoryData.fromJson(v));
      });
    }
  }

  int? _id;
  String? _uuid;
  String? _keywords;
  int? _parentId;
  String? _type;
  String? _img;
  bool? _active;
  String? _createdAt;
  String? _updatedAt;
  Translation? _translation;
  List<CategoryData>? _children;

  CategoryData copyWith({
    int? id,
    String? uuid,
    String? keywords,
    int? parentId,
    String? type,
    String? img,
    bool? active,
    String? createdAt,
    String? updatedAt,
    Translation? translation,
    List<CategoryData>? children,
  }) =>
      CategoryData(
        id: id ?? _id,
        uuid: uuid ?? _uuid,
        keywords: keywords ?? _keywords,
        parentId: parentId ?? _parentId,
        type: type ?? _type,
        img: img ?? _img,
        active: active ?? _active,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        translation: translation ?? _translation,
        children: children ?? _children,
      );

  int? get id => _id;

  String? get uuid => _uuid;

  String? get keywords => _keywords;

  int? get parentId => _parentId;

  String? get type => _type;

  String? get img => _img;

  bool? get active => _active;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  Translation? get translation => _translation;

  List<CategoryData>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uuid'] = _uuid;
    map['keywords'] = _keywords;
    map['parent_id'] = _parentId;
    map['type'] = _type;
    map['img'] = _img;
    map['active'] = _active;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_translation != null) {
      map['translation'] = _translation?.toJson();
    }
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
