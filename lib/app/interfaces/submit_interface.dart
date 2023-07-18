// 자료 전송을 위한  인터페이스
abstract class SubmitInterface {
  /// 데이터 전송 메서드
  Future<void> handleSubmit();

  /// 컨트롤러 초기화 메서드
  Future<void> handleInitSubmitController();
}
