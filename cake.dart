class cake{

List <String> model=[];

String? naneshop;
String toString()=> 'Name shop is ${naneshop} model is ${model}';
}
void main(List <String> args){
cake mycake = cake();
 var yourcake = cake();

print(mycake.naneshop);
print(mycake.model);

mycake.naneshop = 'Cakie shop';
mycake.model.addAll (['Apple cake','Banana cake','Cupcake']);

print(mycake.naneshop);
print(mycake.model);

print(mycake);

print(yourcake.model);
yourcake.model.addAll (['Genoa cake','Halloween cake','Ice cream cake']);
print(yourcake);







}


