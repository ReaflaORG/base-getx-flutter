/// 정규표현식
class REGEXP {
  /// 한글만 형식 검사
  ///
  /// [value] String : 한글
  static bool isKorean(String value) {
    RegExp regExp = RegExp(
      r'^[가-힣]+$',
      caseSensitive: true,
      multiLine: false,
    );
    return regExp.hasMatch(value);
  }

  /// 한글 자음/모음 가능 형식 검사
  ///
  /// [value] String : 한글
  static bool isKoreanConsonantVowel(String value) {
    RegExp regExp = RegExp(
      r'^[가-힣ㄱ-ㅎㅏ-ㅣ]+$',
      caseSensitive: true,
      multiLine: false,
    );
    return regExp.hasMatch(value);
  }

  /// 한글 자음/모음 불가 형식 검사
  ///
  /// [value] String : 한글
  static bool isKoreanConsonantVowelNot(String value) {
    RegExp regExp = RegExp(
      r'^[가-힣ㄱ-ㅎㅏ-ㅣ]+$',
      caseSensitive: true,
      multiLine: false,
    );
    return !regExp.hasMatch(value);
  }

  /// 아이디 형식 검사 (영문, 숫자, 특수문자 조합)
  ///
  /// 최소 8자리, 최대 20자리
  ///
  /// [value] String : 아이디
  ///
  /// [type] int : 형식
  ///
  /// 1 : 영문만
  ///
  /// 2 : 영문, 숫자만
  ///
  /// 3 : 영문 소문자, 숫자만
  ///
  /// 4 : 영문 대문자, 숫자만
  ///
  /// 5 : 영문 대소문자, 숫자만
  ///
  /// 6 : 영문, 숫자, 특수문자 조합
  ///
  /// 7 : 영문 소문자, 숫자, 특수문자 조합
  ///
  /// 8 : 영문 대문자, 숫자, 특수문자 조합
  ///
  /// 9 : 영문 대소문자, 특수문자 조합
  static bool isId(
    String value, {
    int type = 9,
  }) {
    RegExp regExp;

    switch (type) {

      /// 아이디 형식 검사 영문만
      case 1:
        regExp = RegExp(
          r'^[a-zA-Z]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문, 숫자만
      case 2:
        regExp = RegExp(
          r'^[a-zA-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 소문자, 숫자만
      case 3:
        regExp = RegExp(
          r'^[a-z0-9]{8,20}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 대문자, 숫자만
      case 4:
        regExp = RegExp(
          r'^[A-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 대소문자, 숫자만
      case 5:
        regExp = RegExp(
          r'^[a-zA-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문, 숫자, 특수문자 조합
      case 6:
        regExp = RegExp(
          r'^[a-zA-Z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 소문자, 숫자, 특수문자 조합
      case 7:
        regExp = RegExp(
          r'^[a-z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 대문자, 숫자, 특수문자 조합
      case 8:
        regExp = RegExp(
          r'^[A-Z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 아이디 형식 검사 영문 대소문자, 숫자, 특수문자 조합
      case 9:
        regExp = RegExp(
          r'^[a-zA-Z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;
      default:
        regExp = RegExp(
          r'^[a-zA-Z0-9]{8,20}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
    }

    return regExp.hasMatch(value);
  }

  /// 이메일 형식 검사
  ///
  /// [value] String : 이메일
  static bool isEmail(String value) {
    RegExp regExp = RegExp(
      r'^[a-zA-Z0-9.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]{8,}$',
      caseSensitive: true,
      multiLine: false,
    );
    return regExp.hasMatch(value);
  }

  /// 휴대폰 번호 검사
  ///
  /// [value] String : 휴대폰 번호
  ///
  /// [type] String : 'kr', 'us', 'jp'
  static bool isPhoneNumber(
    String value, {
    String type = 'kr',
  }) {
    RegExp regExp;

    switch (type) {
      case 'kr':
        regExp = RegExp(
          r'^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
      case 'us':
        regExp = RegExp(
          r'^\+?1?\d{9,15}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
      case 'jp':
        regExp = RegExp(
          r'^\+?1?\d{9,15}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
      default:
        regExp = RegExp(
          r'^\+?1?\d{9,15}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
    }

    return regExp.hasMatch(value);
  }

  /// 지역번호 및 인터넷 전화 형식 검사
  ///
  /// [value] String : 전화번호
  static bool isPhone(String value) {
    RegExp regExp = RegExp(
      r'^\d{2,3}-\d{3,4}-\d{4}$',
      caseSensitive: false,
      multiLine: false,
    );
    return regExp.hasMatch(value);
  }

  /// 비밀번호 검사
  ///
  /// 최소 8자리, 최대 20자리
  ///
  /// [type] int : 비밀번호 형식
  ///
  /// [password] String : 비밀번호
  ///
  /// 1 : 영문만
  ///
  /// 2 : 영문, 숫자만
  ///
  /// 3 : 영문 소문자, 숫자만
  ///
  /// 4 : 영문 대문자, 숫자만
  ///
  /// 5 : 영문 대소문자, 숫자만
  ///
  /// 6 : 영문, 숫자, 특수문자 조합
  ///
  /// 7 : 영문 소문자, 숫자, 특수문자 조합
  ///
  /// 8 : 영문 대문자, 숫자, 특수문자 조합
  ///
  /// 9 : 영문 대소문자, 특수문자 조합
  static bool isPassword(
    String password, {
    int type = 1,
  }) {
    RegExp regExp;

    switch (type) {
      case 1:

        /// 영문만
        regExp = RegExp(
          r'^[a-zA-Z]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 영문, 숫자만
      case 2:
        regExp = RegExp(
          r'^[a-zA-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 영문 소문자, 숫자만
      case 3:
        regExp = RegExp(
          r'^[a-z0-9]{8,20}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      /// 영문 대문자, 숫자만
      case 4:
        regExp = RegExp(
          r'^[A-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 영문 대소문자, 숫자만
      case 5:
        regExp = RegExp(
          r'^[a-zA-Z0-9]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      /// 영문, 숫자, 특수문자 조합
      case 6:
        regExp = RegExp(
          r'^[a-zA-Z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;

      default:
        regExp = RegExp(
          r'^[a-zA-Z0-9!@#$%^&*()_+|~=`{}\[\]:";\<>?,.\/]{8,20}$',
          caseSensitive: true,
          multiLine: false,
        );
        break;
    }

    return regExp.hasMatch(password);
  }

  /// 비밀번호 일치 검사
  ///
  /// [password] String : 비밀번호
  ///
  /// [passwordConfirm] String : 비밀번호 확인
  static bool isSamePassword(String password, String passwordConfirm) {
    return password == passwordConfirm;
  }

  /// 공백 형식 검사
  ///
  /// [value] String : 검사할 문자열
  static bool isBlank(String value) {
    RegExp regExp = RegExp(
      r'^\s*$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(value);
  }

  /// 신용카드 번호 형식 검사
  ///
  /// [creditCardNumber] String : 신용카드 번호
  static bool isCreditCardNumber(String creditCardNumber) {
    RegExp regExp = RegExp(
      r'^\d{4}-\d{4}-\d{4}-\d{4}$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(creditCardNumber);
  }

  /// 년월일 형식 검사 (yyyy-MM-dd)
  ///
  /// [date] String : 년월일
  ///
  /// [type] int : 검사할 형식
  ///
  /// 1 : yyyy-MM-dd
  ///
  /// 2 : yyyyMMdd
  ///
  /// 3 : yyyy.MM.dd
  ///
  /// 4 : yyyy/MM/dd
  ///
  /// 5 : yyyy년 MM월 dd일
  ///
  /// 6 : yyyy.MM.dd HH:mm:ss
  ///
  /// 7 : yyyy/MM/dd HH:mm:ss
  ///
  /// 8 : yyyy년 MM월 dd일 HH시 mm분 ss초
  static bool isDate(String date, {int type = 1}) {
    RegExp regExp;

    switch (type) {
      case 1:
        regExp = RegExp(
          r'^\d{4}-\d{2}-\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 2:
        regExp = RegExp(
          r'^\d{8}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 3:
        regExp = RegExp(
          r'^\d{4}.\d{2}.\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 4:
        regExp = RegExp(
          r'^\d{4}/\d{2}/\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 5:
        regExp = RegExp(
          r'^\d{4}년 \d{2}월 \d{2}일$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 6:
        regExp = RegExp(
          r'^\d{4}.\d{2}.\d{2} \d{2}:\d{2}:\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 7:
        regExp = RegExp(
          r'^\d{4}/\d{2}/\d{2} \d{2}:\d{2}:\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 8:
        regExp = RegExp(
          r'^\d{4}년 \d{2}월 \d{2}일 \d{2}시 \d{2}분 \d{2}초$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      default:
        regExp = RegExp(
          r'^\d{4}-\d{2}-\d{2}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
    }

    return regExp.hasMatch(date);
  }

  /// 주민등록번호 형식 검사
  ///
  /// [value] String : 주민등록번호
  static bool isResidentRegistrationNumber(String value) {
    RegExp regExp = RegExp(
      r'^\d{6}-[1-4]\d{6}$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(value);
  }

  /// 운전면허번호 형식 검사
  ///
  /// [value] String : 운전면허번호
  static bool isDriverLicenseNumber(String value) {
    RegExp regExp = RegExp(
      r'^[가-힣]{2}\d{2}[가-힣]{1}\d{6}$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(value);
  }

  /// 사업자등록번호 형식 검사
  ///
  /// [value] String : 사업자등록번호
  static bool isBusinessRegistrationNumber(String value) {
    RegExp regExp = RegExp(
      r'^\d{3}-\d{2}-\d{5}$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(value);
  }

  /// 주소 형식 검사 (한국)
  ///
  /// [address] String : 주소
  ///
  /// [type] int : 검사할 형식
  ///
  /// 1 : 한국
  ///
  /// 2 : 일본
  ///
  /// 3 : 미국
  static bool isAddress(
    String address, {
    int type = 1,
  }) {
    RegExp regExp;

    switch (type) {
      case 1:
        regExp = RegExp(
          r'^\d{5}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 2:
        regExp = RegExp(
          r'^\d{3}-\d{4}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      case 3:
        regExp = RegExp(
          r'^\d{5}(-\d{4})?$',
          caseSensitive: false,
          multiLine: false,
        );
        break;

      default:
        regExp = RegExp(
          r'^\d{5}$',
          caseSensitive: false,
          multiLine: false,
        );
        break;
    }

    return regExp.hasMatch(address);
  }

  /// HTML 태그 형식 검사
  ///
  /// [html] String : HTML 태그
  static bool isHtmlTag(String html) {
    RegExp regExp = RegExp(
      r'<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(html);
  }

  /// UUID 형식 검사
  ///
  /// [uuid] String : UUID
  static bool isUUID(String uuid) {
    RegExp regExp = RegExp(
      r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(uuid);
  }

  /// 링크 형식 검사 (프로토콜 포함, 미포함)
  ///
  /// [link] String : 링크
  static bool isLink(String link) {
    RegExp regExp = RegExp(
      r'^(http|https)://[a-zA-Z0-9-_.]+',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(link);
  }

  /// 웹사이트 하이퍼링크 형식 검사
  ///
  /// [link] String : 링크
  static bool isHyperLink(String link) {
    RegExp regExp = RegExp(
      r'^(http|https)://[a-zA-Z0-9-_.]+',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(link);
  }

  /// 구글 플레이 스토어 링크 형식 검사
  ///
  /// [link] String : 링크
  static bool isGooglePlayLink(String link) {
    RegExp regExp = RegExp(
      r'^(http|https)://play.google.com/store/apps/details\?id=[a-zA-Z0-9-_.]+',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(link);
  }

  /// 앱스토어 링크 형식 검사
  ///
  /// [link] String : 링크
  static bool isAppStoreLink(String link) {
    RegExp regExp = RegExp(
      r'^(http|https)://apps.apple.com/kr/app/[a-zA-Z0-9-_.]+',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(link);
  }

  /// 이미지 확장자 형식 검사
  ///
  /// [extension] String : 확장자
  static bool isImageExtension(String extension) {
    RegExp regExp = RegExp(
      r'^(jpg|jpeg|png|gif|bmp|webp)$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(extension);
  }

  /// 동영상 확장자 형식 검사
  ///
  /// [extension] String : 확장자
  static bool isVideoExtension(String extension) {
    RegExp regExp = RegExp(
      r'^(mp4|avi|mov|wmv|flv|mkv|webm)$',
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(extension);
  }
}
