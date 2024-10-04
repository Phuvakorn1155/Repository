//inheritExam155
abstract class Greeting {
  void thai() => print("Arun sawad");
  void english() => print("Good morning");
  void japan() => print("Ohiyo");
} 

class NotGreeting extends Greeting {
  @override 
  void thai() {
    print("Arun sawad");
  }

  @override 
  void english() {
    print("Good morning");
  }

  @override 
  void japan() {
    print("Ohiyo");
  }
}
void main() {
  NotGreeting notGreeting = NotGreeting(); 
  notGreeting.thai();  
  notGreeting.english();
  notGreeting.japan();   
}