import 'package:flutter/material.dart';

/// 권한 모델
///
/// [title] : 제목
///
/// [icon] : 아이콘
///
/// [image] : 이미지
///
/// [description] : 설명
///
/// [isRequired] : 필수 여부
///
/// [isExpanded] : 설명 펼침 여부
class PermissionModel {
  String title;
  Icon? icon;
  String? image;
  String description;
  bool isType;
  bool isRequired;
  bool isExpanded;

  PermissionModel({
    this.title = '',
    this.icon,
    this.image = '',
    this.description = '',
    this.isType = false,
    this.isRequired = false,
    this.isExpanded = false,
  });

  PermissionModel copyWith({
    String title = '',
    Icon icon = const Icon(Icons.abc),
    String image = '',
    String description = '',
    bool isType = false,
    bool isRequired = false,
    bool isExpanded = false,
  }) {
    return PermissionModel(
      title: title,
      icon: icon,
      image: image,
      description: description,
      isType: isType,
      isRequired: isRequired,
      isExpanded: isExpanded,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'icon': icon,
      'image': image,
      'description': description,
      'isType': isType,
      'isRequired': isRequired,
      'isExpanded': isExpanded,
    };
  }
}
