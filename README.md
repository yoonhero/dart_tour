<a name="Dart 정리" />
# Dart 정리 

## Table of Contents

- [Dart 정리](#dart-정리)
  - [Table of Contents](#table-of-contents)
  - [Intro](#intro)
  - [Variables](#variables)
  - [Data Types](#data-types)
  - [Functions](#functions)
  - [Classes](#classes)

---

## Intro

  -   모든 Dart 프로그램은 main 함수로부터 시작한다. main 함수가 있어야지 dart가 코드를 실행할 수 있는 것이다.
  -   Dart **;** 세미클론을 써야한다.

## Variables

- Surprised
    -   변수를 선언할 때 타입을 선언하지 않아도 dart compiler가 자동으로 알아내지만 선언한 후에 선언한 타입과 다른 타입의 변수값을 지정할 수는 없다.

    ```dart
    var name = "hi"; // String name = "hi";
    name = 1; // x
    ```

    -   Dynamic Type: 변수를 선언할 때 아무 값도 선언하지 않으면 자유롭게 변수에 값을 선언할 수 있다.
        -   꼭 필요할 때만 쓰자

    ```dart
    var name; // -> Dynamic Type
    dynamic name; // -> also
    ```

    ```dart
    if (name is String){
        name. // Compiler then looks dynamic type as String
    }
    ```

    -   Null Safety : 사용자가 null 타입을 받지 못하도록..
        -   기본적으로 null 값은 필요하다. 하지만 이 값을 참조하려고 할때 발생하는 문제를 막기 위해서 null safety 가 필요한 것이다.
        -   dart 에서는 null 값이 될 수 있도록 명시하고 값을 참조하는 코드를 작성할 때 컴파일러가 null safety 에러를 경고해주는 것이다.

    ```dart
    String? nico = "nico"; // String? -> null 데이터를 가질 수도 있다.
    nico = null;

    if (nico != null){
        print(nico);
    }

    nico?.isNotEmpty;
    ```

    -   Final Variables : 상수

    ```dart
    final name = "yoonhero";
    final String name = "yoonhero";
    ```

    -   Late Variables : 시간차공격 같은 시간차상수?!

    ```dart
    late final String name;
    name = "yoonhero";
    ```

    -   Constant : Compile-Time Constant

        -   Like API key

##   Data Types

- Beutiful
    -   String
    -   bool
    -   int
    -   double
    -   num => int and double

    -   List

        -   Example

        ```dart
        var numbers = [1, 2, 3, 4];
        List<int> numbers = [1, 2, 3, 4];

        numbers.add(1)
        ```

        -   List if

        ```dart
            var numbers = [
                if (bool) 5
            ];
        ```

    -   String Interpolation : $를 쓰고 변수명을 쓰면 파이썬에서 f와 같이 사용할 수 있다.
        -   ${}를 쓰고 안에서 ${age + 11}과 같은 것을 할 수 있다.

    ```dart
    var name = 'yoonhero';
    var hello = 'Hello everyone, my name is $name, nice to meet you!';
    ```

    -   Collection For : 변수를 추가할 때 for 을 사용하여 파이썬처럼 새로운 리스트를 만들 수 있다.

    ```dart
    var oldFriends = ["yoonhero", "hihi"];
    var newFriends = ["hello",
        for (var friend in oldFriends) "$friedns",
    ]
    ```

    -   Maps : key와 value Map<Key Type, Value Type>

    ```dart
    var gifts = {
        // Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
    }; // Map<String, String>

    var gifts2 = Map();
    gifts2['first'] = 'partridge';
    gifts2['second'] = 'turtledoves';
    gifts2['fifth'] = 'golden rings';
    ```

    - Sets : List와 다른점은 item이 unique하다는 점이다. 

    ```dart
    var numbers = {1, 2, 3, 4};
    ```

## Functions

- FUN
    - Positional Arguments : 일반적인 함수 사용 => 클린코드에 적합하지 않는다. 

    - Named Arguments : Positional Arguments 대신에 마치 JSON 데이터를 보내는 것처럼 이름을 명시해서 함수를 호출하는 방법


    ```dart
    // Positional Arguments
    String sayhello(String name, Int age) => "Hello $name, $age";

    print(sayhello("yoonhero", 16));
    ```

    ```dart
    // Named Arguments
    String sayhello({String name, Int age}) => "Hello $name, $age";

    print(sayhello(name: "yoonhero", age: 16));
    ```

    - Named Arguments를 사용할 때는 null safety 를 위해서 named arguments에 required를 추가해주거나 default arguments를 설정해야 한다. 


    - Optional Arugments 는 뭐... 그냥 있다 사용성이 별로 없는 것 같다...

    - ?? Operator : 
      - ?? 연산자를 이용하면 왼쪽 값이 null 인지 체크해서 null 이 아니면 왼쪽 값을 리턴하고 null이면 오른쪽 값을 리턴한다. 
      - ??= 연산자를 이용하면 변수 안에 값이 null일 때를 체크해서 값을 할당해줄 수 있다. 

    - Typedef : 자료형에 내가 원하는 이름을 붙일 수 있게 해준다.?
    
    ```dart
    typedef UserInfo = Map<String, String>;
    ```

## Classes

- WOW
    - 기본적으로 클래스의 선언과 사용은 Javascript와 굉장히 유사하다는 느낌을 받았다. 하지만 배우면서 가장 특이하다고 생각했던 것은 바로 Named Constructors 이다. 
  
    ```dart
    Player.createBluePlayer({required String name, required int xp})
        : this.name = name,
            this.xp = xp,
            this.team = "blue",
            this.gender = "men";

    ```

    - Cascade Notation : 정말 신기한... 문법이다. 

    - enum : 개발자의 실수를 방지할 수 있도록 존재한다.

    ```dart
    enum Level = {0, 10, 100};
    ```

    - Abstract Class : 실제 클래스를 선언하는 것이 아니라 클래스의 토대가 되는 blueprint를 선언하는 클래스라고 이해하면 될 것 같다. 


    - Inheritance : 파이썬이랑 거의 똑같다. 
    - MixIn: 꼭 다 상속을 안하고 with 키워드로 그 안에 있는 메소드와 함수를 긁어 올 수 있다. 