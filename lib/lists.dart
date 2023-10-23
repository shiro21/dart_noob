void main() {
  var numbers = [1, 2, 3, 4];
  // List<int> number = [1, 2, 3, 4];
  numbers.add(1);
  
  // collection if AND collection for
  // 만약에 giveMeFive가 true면 5가 있다.
  var giveMeFive = true;
  var numb = [1, 2, 3, 4, if(giveMeFive) 5];

  // String interpolation: text에 변수를 추가하는 방법( 단순내용 $name, 계산내용 ${age + 2})
  var name = "Jun";
  var age = 10;
  var greeting = "Hello, My name is $name and I'm ${age + 2}!!!";

  var oldFriends = ["Jun", "Lynn"];
  var newFriends = [
    "Lewis",
    "Ralph",
    "Darren",
    for(var friend in oldFriends) "$friend",
  ];
}