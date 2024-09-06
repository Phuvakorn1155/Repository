class A extends B{ //supa class
int x = 10 ;
C(this.x){print('Constr of class C');}
 void showinfo() => print('X = $x, Y = $y') ;
@overtide

String toString() => "Object FROM class A" ;
}

class B extends C{
  int y ;
  B(this.x):super(x){print('Constr of class C');}
  void showinfo() => print('X = $x, Y = $y') ;
@overtide
String toString() => "Object FROM class B" ;

}

class C extends A{
int x = 3 ;
  C(this.x){print('Constr of class C');}
   void showinfo() => print('X = $x, Y = $y') ;
@overtide
String toString() => "Object FROM class C" ;


}


void main (list<String>args){
var C ();
var B ();
var A ();
A showinfo()  ;
 B showinfo()  ;
  C showinfo()  ;
print a (('x= $(B.x) y= $(B.y)'));
print (C.x) ;
print (A.x) ;

}