import 'package:intl/intl.dart';

/// 문자열을 숫자형으로 변환
extension StringToNumber on String {
  int parseInt() {
    return int.parse(this);
  }
}

/// 숫자형을 문자열로 변환
extension NumberToString on int {
  String parseString() {
    return '$this';
  }
}

/// 숫자형을 콤마표시로 변환
extension NumberCommaFormat on String {
  String numberFormat() {
    return NumberFormat('#,###').format(int.parse(this));
  }
}

/// 몇분전 몇시간전 몇일전 몇달전 몇년전
extension DateTimeFormat on DateTime {
  String dateTimeFormat() {
    final now = DateTime.now();
    final diff = now.difference(this);

    if (diff.inDays > 365) {
      return '${diff.inDays ~/ 365}년 전';
    } else if (diff.inDays > 30) {
      return '${diff.inDays ~/ 30}달 전';
    } else if (diff.inDays > 0) {
      return '${diff.inDays}일 전';
    } else if (diff.inHours > 0) {
      return '${diff.inHours}시간 전';
    } else if (diff.inMinutes > 0) {
      return '${diff.inMinutes}분 전';
    } else {
      return '방금 전';
    }
  }
}

/// 날짜 데이터를 yyyy-MM-dd 형식으로 변환
extension DateFormatToString on DateTime {
  String dateFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}

/// 날짜 데이터를 yy.MM.dd 형식으로 변환
extension DateFormatToString2 on DateTime {
  String dateFormat2() {
    return DateFormat('yy.MM.dd').format(this);
  }
}

/// 날짜 데이터를 yy/MM/dd 형식으로 변환
extension DateFormatToString3 on DateTime {
  String dateFormat3() {
    return DateFormat('yy/MM/dd').format(this);
  }
}
