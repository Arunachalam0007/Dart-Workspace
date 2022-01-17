import 'dart:io';

import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}

void main() {
  while (true) {
    print('Rock, Paper, Scissors? (r/p/s)');
    final playerSelected = stdin.readLineSync();
    final aiMove = Move.values[Random().nextInt(3)];
    if (playerSelected == 'r' ||
        playerSelected == 'p' ||
        playerSelected == 's') {
      var playerMove;
      if (playerSelected == 'r'){
        playerMove = Move.rock;  
      } else if (playerSelected == 'p'){
        playerMove = Move.paper;  
      } else {
        playerMove = Move.scissors;
      }
      print('Player Move: $playerMove');
      print('AI Move: $aiMove');
      if (playerMove == aiMove) {
        print('Match Draw');
      } else if (playerMove == Move.scissors && aiMove == Move.paper ||
          playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock) {
        print('Player Won');
      } else {
        print('AI Won');
      }
    } else if (playerSelected == 'q') {
      break;
    } else {
      print('Invalid Move');
    }
    //break;
  }
}
