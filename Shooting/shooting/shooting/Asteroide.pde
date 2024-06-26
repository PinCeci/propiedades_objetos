class Asteroide{
 PImage imagen;
 PVector posicion;
 float altoImagen;
 float anchoImagen;
 PVector velocidad;


public Asteroide(PVector posicion,float anchoImagen, float altoImagen,PVector velocidad){
  cargarImagen();
  this.posicion = posicion;
  this.anchoImagen = anchoImagen;
  this.altoImagen = altoImagen;
  this.velocidad = velocidad;
 }
 
  private void cargarImagen(){
 this.imagen = loadImage ("asteroide.png");
 this.altoImagen=51;
 this.anchoImagen=54;
 }
 public void dibujar(){
  //imageMode(CENTER);
  //image(imagen,this.posicion.x,this.posicion.y,anchoImagen,altoImagen);
  image(imagen,this.posicion.x - anchoImagen/2,this.posicion.y - altoImagen/2,anchoImagen,altoImagen);
 }
 public void mover(){
   if(posicion.y > height){
     this.posicion.y=0;
   }
    
   if(this.posicion.x > width){
     this.posicion.x=0;
   }
   if(this.posicion.x<0){
     this.posicion.x=width;
   }
   if(this.posicion.y<0){
     this.posicion.y=height;
   }
   
   this.posicion.y+=this.velocidad.y;
   this.posicion.x+=this.velocidad.y;
 }
}
