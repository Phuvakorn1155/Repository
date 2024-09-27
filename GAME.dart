abstract class Game{
int? level;
void start();
void pause();
void toContinue();
void stop();
void play();
}

abstract class TicTacToeAbst implements Game{
  @override
  int? level;
  start() => print("TicTacToeAbst: start()");
  pause() => print("TicTacToeAbst: pause()");
  toContinue() => print("TicTacToeAbst: toContinue()");
  stop() => print("TicTacToeAbst: stop()");
  play() => print("TicTacToeAbst: play()");
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