Shooter nave2;
Asteroide[] asteroides;



public void setup(){
  size (600,600);
 // nave1 = new Shooter();
  //nave1.posicion = new PVector (100,100);
  PVector posicionInicial = new PVector(width/2, height-54);
  PVector velocidad = new PVector (20,0);
  nave2 = new Shooter(posicionInicial, 51,54,velocidad);
  
  asteroides = new Asteroide[5];
  for(int i=0;i<asteroides.length;i++){
    PVector posAst = new PVector (random(-width,width),random(-height,height));
    PVector velAst = new PVector (random(-5,5),random(-5,5));
    asteroides[i]=new Asteroide(posAst,30,30,velAst);
  }
}

public void draw (){
  background (0);
 // nave1.dibujar();
  nave2.dibujar();
  for(int i=0;i<asteroides.length;i++){
   asteroides[i].dibujar();
   asteroides[i].mover();
  }
}

public void dibujarEjes(){
stroke (255,0,0);
line (width/2,0,width/2,height);
line(0,height/2,width,height/2);
}
  public void keyPressed(){
    int direccion=0;
  if(keyCode==RIGHT || key=='d'){
    nave2.mover(1);
    }

  if(keyCode==LEFT || key =='a'){
    nave2.mover(0);
    }
  
}
