/// 유저 모델
class UserModel {
  /// [idx] 유저 고유 번호
  ///
  /// [provider] 소셜 로그인 타입 (email, google, kakao, apple)
  ///
  /// [providerId] 소셜 로그인 고유 번호
  ///
  /// [userId] 유저 아이디
  ///
  /// [userEmail] 유저 이메일
  ///
  /// [userName] 유저 이름
  ///
  /// [userPhoneNumber] 유저 전화번호
  ///
  /// [userZipcode] 유저 우편번호
  ///
  /// [userAddress] 유저 주소
  ///
  /// [userLastAddress] 유저 나머지 주소
  ///
  /// [userGender] 유저 성별 (남자, 여자)
  ///
  /// [userBirthDay] 유저 생년월일
  ///
  /// [deviceToken] 디바이스 토큰
  ///
  /// [role] 유저 권한 (user, doctor, admin)
  ///
  /// [isAlarm] 알림 여부 (0: 끄기, 1: 켜기)
  ///
  /// [isAccess] 접근 가능 여부 (0: 불가능, 1: 가능)
  ///
  /// [updatedAt] 업데이트 일시
  ///
  /// [lastLoginedAt] 마지막 로그인 일시
  ///
  /// [createdAt] 생성 일시
  UserModel({
    this.idx,
    this.provider,
    this.providerId,
    this.userId,
    this.userEmail,
    this.userName,
    this.userPhoneNumber,
    this.userZipcode,
    this.userAddress,
    this.userLastAddress,
    this.userGender,
    this.userBirthDay,
    this.deviceToken,
    this.role,
    this.isAlarm,
    this.isAccess,
    this.updatedAt,
    this.lastLoginedAt,
    this.createdAt,
  });

  final int? idx;
  final String? deviceToken;
  final String? provider;
  final String? providerId;
  final String? userId;
  final String? userEmail;
  final String? userName;
  final String? userPhoneNumber;
  final String? userZipcode;
  final String? userAddress;
  final String? userLastAddress;
  final String? userGender;
  final DateTime? userBirthDay;
  final String? role;
  final int? isAlarm;
  final int? isAccess;
  final DateTime? updatedAt;
  final DateTime? lastLoginedAt;
  final DateTime? createdAt;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      idx: json['idx'],
      deviceToken: json['device_token'],
      provider: json['provider'],
      providerId: json['provider_id'],
      userId: json['user_id'],
      userEmail: json['user_email'],
      userName: json['user_name'],
      userPhoneNumber: json['user_phoneNumber'],
      userZipcode: json['user_zipcode'],
      userAddress: json['user_address'],
      userLastAddress: json['user_last_address'],
      userGender: json['user_gender'],
      userBirthDay: json['user_birth_day'],
      role: json['role'],
      isAlarm: json['is_alarm'],
      isAccess: json['is_access'],
      updatedAt: DateTime.parse(json['updated_at']),
      lastLoginedAt: DateTime.parse(json['last_login_at']),
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() => {
        'idx': idx,
        'device_token': deviceToken,
        'provider': provider,
        'provider_id': providerId,
        'user_id': userId,
        'user_email': userEmail,
        'user_name': userName,
        'user_phoneNumber': userPhoneNumber,
        'user_zipcode': userZipcode,
        'user_address': userAddress,
        'user_last_address': userLastAddress,
        'user_gender': userGender,
        'user_birth_day': userBirthDay,
        'role': role,
        'is_alarm': isAlarm,
        'is_access': isAccess,
        'updated_at': updatedAt?.toIso8601String(),
        'last_login_at': lastLoginedAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
      };
}
