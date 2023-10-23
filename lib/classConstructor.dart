
class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson) : name = playerJson["name"], xp = playerJson["xp"], team = playerJson["team"];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // 구조화 되지 않은 데이터 불러오기
  var test = [
    {
      "name": "Jun",
      "xp": 12,
      "team": "blue",
    },
    {
      "name": "ASD",
      "xp": 12,
      "team": "blue",
    },
    {
      "name": "QWE",
      "xp": 12,
      "team": "blue",
    }
  ];

  test.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}