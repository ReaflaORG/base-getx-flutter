// Provider을 통한 인터페이스 정리
abstract class ProviderInterface {
  ///  프로세스 가져오기
  bool get isLoding;

  /// 초기 프로세스 설정하기
  void setIsLoding(bool data) {}

  /// 데이터 초기화 메서드
  Future<void> handleInitialization();

  /// 데이터 업데이트 메서드
  Future<void> handleUpdateInitialization();
}
