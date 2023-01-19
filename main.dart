// class Player {
//   final String name;
//   int xp;
//   String team, gender;

//   // Player(this.name, this.xp, this.team, this.gender);
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.gender,
//   });

//   Player.createBluePlayer({required String name, required int xp})
//       : this.name = name,
//         this.xp = xp,
//         this.team = "blue",
//         this.gender = "men";

//   Player.createRedPlayer({
//     required String team,
//     required String gender,
//   })  : this.team = team,
//         this.gender = gender,
//         this.name = "yoonher",
//         this.xp = 190;

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// // class Player {
// //   late final String name;
// //   late int xp;

// //   Player(String name, int xp) {
// //     this.name = name;
// //     this.xp = xp;
// //   }

// //   void sayHello() {
// //     // var name = "hi";
// //     print("Hi my name is $name");
// //   }
// // }

// void main() {
//   var player = new Player.createBluePlayer(
//     name: "nico",
//     xp: 1200,
//   );
//   print(player.name);
//   // var player2 = Player("nico", 150000);
// }

enum GeniusLevel { Nud, Medium, God }

class Hero {
  GeniusLevel genius;

  Hero({required GeniusLevel genius}) : this.genius = genius;
}

class intelligence {
  double intelligenceLevel = 1999.0991919;
}

class Human with intelligence {
  final String name;

  Human({required String this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  Team team;

  Player({required Team this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("wow my team is $team!");
  }
}

void main() {
  var me = new Hero(genius: GeniusLevel.God);
}
