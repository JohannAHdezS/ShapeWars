import processing.sound.*;

//Clases
class Personaje{
  int seleccion;
  
 Personaje(int seleccion_){
   this.seleccion = seleccion_;
  }
  void display(){
    switch(seleccion){
      case 1: cubi(); break;
      case 2: polynia(); break;
      case 3: rolls(); break;
      case 4: rombi();break;
      case 5: trapeciar();break;
      case 6: cubi(); break;
      case 7: polynia(); break;
      case 8: rolls(); break;
      case 9: rombi();break;
      case 10: trapeciar();break;
    }
  }
}
//Variables Globales
int n, sel, sel1, sel2, hp1,hp2, turn, mus;
SoundFile musica;
Personaje Cubi1;
Personaje Polynia1;
Personaje Rolls1;
Personaje Rombi1;
Personaje Trapeciar1;
Personaje Cubi2;
Personaje Polynia2;
Personaje Rolls2;
Personaje Rombi2;
Personaje Trapeciar2;

void setup(){
size(800,720);
mus = 1;
n = 0;
hp1 = 100;
hp2 = 100;
sel1 = 1;
sel2 = 1;
turn = 1;
Cubi1 = new Personaje(1);
Polynia1 = new Personaje(2);
Rolls1 = new Personaje(3);
Rombi1 = new Personaje(4);
Trapeciar1 = new Personaje(5);
Cubi2 = new Personaje(1);
Polynia2 = new Personaje(2);
Rolls2 = new Personaje(3);
Rombi2 = new Personaje(4);
Trapeciar2 = new Personaje(5);
musica = new SoundFile(this,"Battle.mp3");
musica.loop();
}
void draw(){
  switch(n/*Aqui dentro va la variable que hace el cambio*/){
    case 0:
    Titulo();
    break;
    case 1:
    Seleccion();
    break;
    case 2:
    Batalla();
    break;
    case 3:
    Resultados();
    break;
  }
 }
//Teclas  
void keyPressed(){
  //Instrucciones 1
  if (n == 0 && key == 'z'){
    n = 1;
    mus =2;
  }
  //Instrucciones 2
  else if (n == 1 && sel1 == 1 && key == 'z'){
    sel1 = 2;
  }
  else if (n == 1 && sel1 == 2 && key == 'z'){
    sel1 = 3;
  }
  else if (n == 1 && sel1 == 3 && key == 'z'){
    sel1 = 4;
  }
  else if (n == 1 && sel1 == 4 && key == 'z'){
    sel1 = 5;
  }
  else if (n == 1 && sel1 == 5 && key == 'z'){
    sel1 = 1;
  }
  //Jugador 2
  else if (n == 1 && sel2 == 1 && key == 'a'){
    sel2 = 2;
  }
  else if (n == 1 && sel2 == 2 && key == 'a'){
    sel2 = 3;
  }
  else if (n == 1 && sel1 == 3 && key == 'a'){
    sel2 = 4;
  }
  else if (n == 1 && sel1 == 4 && key == 'a'){
    sel2 = 5;
  }
  else if (n == 1 && sel1 == 5 && key == 'a'){
    sel2 = 1;
  }
  //Paso a la siguiente pantalla
  else if(n == 1 && key == ENTER){
    n = 2;
    mus = 3;
  }
  //Instrucciones 3
  else if (turn == 1 && key == 'z' ){
    hp2 -= round(random(10,15));
    turn = 2;
  }
  else if (turn == 2 && key == 'a' ){
    hp1 -= round(random(10,15));
    turn = 1;
  }
  
  if (hp1 <= 0 || hp2 <= 0){
   n = 3; 
   mus = 4;
  }
  //Instrucciones 4
  if (n == 3 && key == 'x'){
    n = 0;
    hp1 =100;
    hp2 =100;
    sel1 = 1;
    sel2 = 1;
    mus = 1;
  }
}
