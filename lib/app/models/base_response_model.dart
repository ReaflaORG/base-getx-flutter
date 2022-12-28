/// 베이스 리스폰스 모델
class BaseResponseModel {
  /// [statusCode] 응답 코드
  ///
  /// [message] 응답 메시지
  ///
  /// [status] 응답 상태
  ///
  /// [data] 응답 데이터
  BaseResponseModel({
    required this.statusCode,
    required this.message,
    required this.status,
    this.data,
  });

  int statusCode;
  String? message;
  String? status;
  dynamic data;

  factory BaseResponseModel.fromJson({
    required int statusCode,
    required dynamic data,
  }) {
    return BaseResponseModel(
      statusCode: statusCode,
      message: data['message'],
      status: data['status'],
      data: data['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'status': status,
      'data': data,
      'statusCode': statusCode,
    };
  }
}
