
void main(){
    /// Differences with Kotlin Variable

  /// Same Java Variable
  String name = "아";
  int age = 20;
  double tall = 164.4;
  bool isChecked = false;

  /// 타입 추론 (단, 다른 타입으로 변경 불가능)
  var names = "아";

  /// 타입 추론 (다른 타입으로 변경 가능)
  dynamic car = "benz";
  car = 10;


}