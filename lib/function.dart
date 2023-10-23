// 리턴하지 않을 때
void sayHello(String name) {
  print("Hello, $name nice to meet you");
}

// 리턴할 때 ( String을 리턴합니다. void를 리턴할 수 없음 )
// void: 아무것도 리턴하지 않아도 된다는 뜻
String sayHello2(String name) {
  return "Hello, $name";
}

// 위의 return과 같은 의미 ( 한줄일때 이렇게 쓰면 깔끔하다. )
String sayHello3(String name) => "Hello, $name";

// Named Parameters (requied를 사용하거나 default value를 사용합니다. )
String sayHello4({required String name, required int age, String country = "NewYork"}) {
  return "Hello name: $name, age: $age, and country: $country";
}

// Optional Positional Parameter
// []를 사용하면 [] arguments는 필수가 아니라고 지정해줍니다. "Cuba"를 넣지 않아도 됩니다.
String sayHello5(String name, int age, [String? country = "Cuba"]) => "Hello $name, age: $age, country: $country";

// QQ Operator ( ?? or ?= )
// 1번 방법
// String capitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   }

//   return "ANon";
// }

// 2번 방법
// String capitalizeName(String? name) => name != null ? name.toUpperCase() : "ANon";

// 3번 방법 ( ??: 만약 좌항이 null이면 우항을 리턴합니다. )
String capitalizeName(String? name) => name?.toUpperCase() ?? "ANon";

// Typedef ( 타입의 이름을 지정할 수 있습니다. ) typedef는 간단한 데이터의 alias를 만들때 사용합니다.
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  // reversed를 하면 List랑 조금 다른 iterable이 되기 때문에 다시 List로 변환해줘야 합니다.
  return reversed.toList();
}
void main() {
  print(sayHello3("Jun"));

  // 이렇게 작성하면 헷갈릴 가능성이 생깁니다. 이럴때 Named Parameter를 사용합니다. ( 순서 상관 없습니다. )
  // dart는 Named Parameter를 지원하지 않기 때문에 sayHello4부분에 중괄호를 추가합니다.
  // 여기서 또 null safety가 적용되기 때문에 default value를 적용하거나, required를 붙여준다. ( 반드시 name, age, country를 넣어야 한다는 것을 의미한다. )
  // print(sayHello4("Jun", 19, "Korea"));
  print(sayHello4(name: "Jun", age: 19, country: "Korea"));
  // Optional Positional Parameter
  print(sayHello5("Jun", 19));

  capitalizeName("Jun");
  capitalizeName(null);

  // ??=
  String? name;
  // 만약 name이 null이라면 값을 할당해달라는 내용입니다.
  name ??= "Jun";
}