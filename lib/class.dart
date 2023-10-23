// Class 기본
// class Player {
//   final String name = "Jun";
//   int xp = 1500;

//   void sayHello() {
//     // 이렇게 var name이 지정된 경우 Player의 name에 접근하고 싶을 때는 this.name을 해줘야합니다.
//     // 하지만 이렇게 var와 class property가 겹치는게 아니라면 this를 사용하지 않습니다.
//     var name = "ASD";
//     print("Hi!, my name is $name");
//     print("Hi!, my name is ${this.name}");
//   }
// }

// void main() {
//   var player = Player();

//   player.sayHello();
// }





// class Player {
//   // late를 사용해서 변수들의 값을 나중에 받아오겠다고 말해줍니다.
//   late final String name;
//   late int xp;

//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }
  
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// 위 내용을 더 간단한 constructor로 만들기
class Player {
  // late를 사용해서 변수들의 값을 나중에 받아오겠다고 말해줍니다.
  final String name;
  int xp;
  String team;
  int age;

  // Positional Constructor Parameter
  // Player(this.name, this.xp, this.team, this.age);
  // Named Constructor Parameters
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  });

  // 초기화 할 수 있는 Constructor 생성하기
  // :( 콜론 )을 넣음으로써 dart에게 여기서 player객체를 초기화 하겠다고 이야기를 한 내용입니다.
  Player.createBluePlayer({
    required String name,
    required int age
  }) : this.age = age, this.name = name, this.team = "blue", this.xp = 0;
  
  // Positional 형식
  Player.createRedPlayer(String name, int age) : this.age = age, this.name = name, this.team = "red", this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}


void main() {
  var player = Player(
    name: "Jun",
    xp: 1200,
    team: "Red",
    age: 12
  );
  player.sayHello();

  // var player2 = Player("asd", 2000, "blue", 12);
  player.sayHello();

  var player3 = Player.createBluePlayer(name: "NEW", age: 15);

  var player4 = Player.createRedPlayer("Yarn", 20);
}