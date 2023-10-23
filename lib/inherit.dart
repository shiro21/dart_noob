// 상속에 대한 내용입니다.
class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Mixin: 생성자가 없는 클래스를 의미합니다. Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점입니다. ( 여기저기서 사용할 수 있습니다. )
class Strong {
  final double strenghtLevel = 1500.99;
}
class QuickRunner {
  void runQuick() {
    print("Run~~~");
  }
}

enum Team { blue, red }
// with: 다른 클래스의 프로퍼티와 메서드를 그냥 긁어옵니다. 반드시 상속을 받을 필요는 없습니다.
class Player extends Human with Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
    required String name
  }) : super(name: name);

  // override( 대체 ) Human에서 온 sayHello를 직접 만든 메서드로 override한다.
  @override
  void sayHello() {
    super.sayHello();
    print("and I play for $team");
  }
}

void main() {
  var player = Player(team: Team.red, name: "Jun");


}