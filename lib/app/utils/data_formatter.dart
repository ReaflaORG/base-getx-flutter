import 'package:intl/intl.dart';

class DataFormat {
  /// 문자열 데이터를 날짜 데이터 변환
  ///
  /// [date] 날짜 데이터
  ///
  /// [type] 날짜 형식
  ///
  /// 1 : yyyy-MM-dd
  ///
  /// 2 : yy.MM.dd
  ///
  /// 3 : yy/MM/dd
  ///
  /// 4 : yyyy-MM-dd HH:mm:ss
  ///
  /// 5 : yyyy-MM-dd HH:mm
  ///
  /// 6 : yyyy-MM-dd HH
  static String toDateFormatConversion(
    DateTime date, {
    int type = 1,
  }) {
    String temp;

    switch (type) {
      case 1:
        temp = 'yyyy-MM-dd';
        break;
      case 2:
        temp = 'yy.MM.dd';
        break;
      case 3:
        temp = 'yy/MM/dd';
        break;
      case 4:
        temp = 'yyyy-MM-dd HH:mm:ss';
        break;
      case 5:
        temp = 'yyyy-MM-dd HH:mm';
        break;
      case 6:
        temp = 'yyyy-MM-dd HH';
        break;
      default:
        temp = 'yyyy-MM-dd';
        break;
    }

    return DateFormat(temp).format(date);
  }

  /// 날짜 데이터 형식 변환
  ///
  /// [date] 날짜 데이터
  ///
  /// [type] 날짜 형식
  ///
  /// 1 : yyyy-MM-dd
  ///
  /// 2 : yy.MM.dd
  ///
  /// 3 : yy/MM/dd
  ///
  /// 4 : yyyy-MM-dd HH:mm:ss
  ///
  /// 5 : yyyy-MM-dd HH:mm
  ///
  /// 6 : yyyy-MM-dd HH
  static DateTime toDateConversion(
    String date, {
    int type = 1,
  }) {
    String temp;

    switch (type) {
      case 1:
        temp = 'yyyy-MM-dd';
        break;
      case 2:
        temp = 'yy.MM.dd';
        break;
      case 3:
        temp = 'yy/MM/dd';
        break;
      case 4:
        temp = 'yyyy-MM-dd HH:mm:ss';
        break;
      case 5:
        temp = 'yyyy-MM-dd HH:mm';
        break;
      case 6:
        temp = 'yyyy-MM-dd HH';
        break;
      default:
        temp = 'yyyy-MM-dd';
        break;
    }

    return DateFormat(temp).parse(date);
  }

  /// 날짜 데이터를 한글 형태로 변환
  ///
  /// [date] 날짜 데이터
  static toKoreaDateConversion(
    DateTime date,
  ) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inDays > 365) {
      return '${diff.inDays ~/ 365}년 전';
    } else if (diff.inDays > 30) {
      return '${diff.inDays ~/ 30}달 전';
    } else if (diff.inDays > 7) {
      return '${diff.inDays ~/ 7}주 전';
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
