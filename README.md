# Dart 정리 

- 모든 Dart 프로그램은 main 함수로부터 시작한다. main 함수가 있어야지 dart가 코드를 실행할 수 있는 것이다. 
- Dart **;** 세미클론을 써야한다.  
- 변수를 선언할 때 타입을 선언하지 않아도 dart compiler가 자동으로 알아내지만 선언한 후에 선언한 타입과 다른 타입의 변수값을 지정할 수는 없다.  

```dart
var name = "hi"; // String name = "hi";
name = 1; // x 
```

- Dynamic Type: 변수를 선언할 때 아무 값도 선언하지 않으면 자유롭게 변수에 값을 선언할 수 있다. 
  - 꼭 필요할 때만 쓰자

```dart
var name; // -> Dynamic Type
dynamic name; // -> also
```

```dart
if (name is String){
    name. // Compiler then looks dynamic type as String
}
```


- Null Safety : 사용자가 null 타입을 받지 못하도록..
    - 기본적으로 null 값은 필요하다. 하지만 이 값을 참조하려고 할때 발생하는 문제를 막기 위해서 null safety 가 필요한 것이다. 
    - dart 에서는 null 값이 될 수 있도록 명시하고 값을 참조하는 코드를 작성할 때 컴파일러가 null safety 에러를 경고해주는 것이다. 

```dart
String? nico = "nico"; // String? -> null 데이터를 가질 수도 있다. 
nico = null; 

if (nico != null){
    print(nico);
}

nico?.isNotEmpty;
```

- Final Variables : 상수 

```dart
final name = "yoonhero";
final String name = "yoonhero";
```