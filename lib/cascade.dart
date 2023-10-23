// 추상화 클래스 ( abstract ) 추상화 클래스는 이를 상속받는 모든 클래스가 가지고있어야 하는 메서드를 정의하고 있습니다.
abstract class Human {
  void walk();
}

// enum ( 오타를 칠 수 있는 실수를 줄여줍니다. )
enum Team { red, blue }

// Player에 추상화 클래스를 적용시켰기 떄문에 walk 메서드가 있다고 확신할 수 있습니다.
class Player extends Human {
  String name;
  int xp;
  // enum으로 두가지만 선택 가능하게 해줍니다.
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team
  });

  void walk() {
    print("I'm walk");
  }

  void sayHello() {
    print("Hi, my name is $name");
  }
}

void main() {

  // 변경하는 방법 ( ..은 jun을 가리킵니다.) Cascade Operator
  var jun = Player(name: "Jun", xp: 1200, team: Team.red)
  ..name = "ASD"
  ..xp = 123123123
  ..team = Team.blue;

  // 아래처럼도 사용가능합니다.
  var jj = Player(name: "Hello", xp: 0, team: Team.blue);

  var potato = jj
  ..name = "las"
  ..xp = 123123213
  ..team = Team.red
  ..sayHello();
}