class Shooter {
PImage imagen;
PVector posicion;
float altoImagen;
float anchoImagen;
PVector velocidad;

public Shooter(){
  cargarImagen();
 }
 
 public Shooter(PVector posicion,float anchoImagen, float altoImagen){
  cargarImagen();
  this.posicion = posicion;
  this.anchoImagen = anchoImagen;
  this.altoImagen = altoImagen;
 }
 
  public Shooter(PVector posicion,float anchoImagen, float altoImagen,PVector velocidad){
  cargarImagen();
  this.posicion = posicion;
  this.anchoImagen = anchoImagen;
  this.altoImagen = altoImagen;
  this.velocidad = velocidad;
 }
 
 private void cargarImagen(){
 this.imagen = loadImage ("shooter.png");
 this.altoImagen=51;
 this.anchoImagen=54;
 }
public void dibujar(){
  //imageMode(CENTER);
  //image(imagen,this.posicion.x,this.posicion.y,anchoImagen,altoImagen);
  image(imagen,this.posicion.x - anchoImagen/2,this.posicion.y - altoImagen/2,anchoImagen,altoImagen);
 }
 
 public void mover(int direccion){
   if(direccion==0){
   this.posicion.x-=this.velocidad.x;
 }
 if(direccion==1){
   this.posicion.x+=this.velocidad.x;
 } 
 }
}
