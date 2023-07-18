import 'package:flutter/material.dart';

/// 바텀 네비게이션 모델
///
/// [label] String : 라벨
///
/// [icon] String : 아이콘
///
/// [activeIcon] String : 활성화 아이콘
///
/// [isType] bool : 타입 여부 (false = 아이콘, true = 이미지)
class BottomNavigationModel {
  BottomNavigationModel({
    required this.label,
    this.icon,
    this.image = '',
    this.activeIcon,
    this.isType = false,
  });

  String label;
  Icon? icon;
  String? image;
  String? activeIcon;
  bool isType;
}
