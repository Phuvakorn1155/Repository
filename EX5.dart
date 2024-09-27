abstract class Game {
  int? level;
  void start();
  void pause();
  void toContinue();
  void stop();
  void play();
}

abstract class Player {
  String? name;
  int? level;
}

abstract class TicTacToeAbst implements Game {
  @override
  int? level;

  @override
  void pause() {
    print('TicTacToeAbst: pause()');
  }

  @override
  void play() {
    print('TicTacToeAbst: play()');
  }

  @override
  void start() {
    print('TicTacToeAbst: start()');
  }

  @override
  void stop() {
    print('TicTacToeAbst: stop()');
  }

  @override
  void toContinue() {
    print('TicTacToeAbst: toContinue()');
  }
}

class TicTacToe extends TicTacToeAbst {
  @override
  void stop() {
    print('TicTacToe: stop()');
  }
}

void main(List<String> args) {
  TicTacToe tt = TicTacToe(); // Correctly instantiate TicTacToe
  tt.start();
  tt.pause();
  tt.play();
  tt.toContinue();
  tt.stop();
}