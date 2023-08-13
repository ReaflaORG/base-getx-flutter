/// 베이스 리스폰스 모델
class BaseResponseModel {
  /// [statusCode] 응답 코드
  ///
  /// [data] 응답 데이터
  ///
  /// [message] 응답 메시지
  ///
  /// [error] 응답 에러
  BaseResponseModel({
    required this.statusCode,
    required this.message,
    required this.error,
    this.data,
  });

  int statusCode;
  String? error;
  String? message;
  dynamic data;

  factory BaseResponseModel.fromJson({
    required int statusCode,
    required dynamic data,
  }) {
    return BaseResponseModel(
      statusCode: statusCode,
      message: data['message'],
      error: data['error'],
      data: data['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'data': data,
      'message': message,
      'error': error,
    };
  }
}
