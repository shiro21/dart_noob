void main() {
  // Map<int, bool> 키의 자료형은 int이며, 값은 bool이다. var를 사용하면 컴파일러가 key와 value의 자료형을 유추한다.
  Map<int, bool> player = {
    1: true,
    2: false,
    3: true
  };

  Map<List<int>, bool> pp = {
    [1, 2, 3, 4]: true,
  };
  
  // Set Set은 모두 고유하기 때문에 중복을 허용하지 않는다.
  // var numberss = {1, 2, 3, 4};
  Set<int> numberss = {1, 2, 3, 4};
}