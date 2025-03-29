boolean validapos =false;

class raquete{
  float xr = width-10;
  float xr2 = 0;
  float yr = 400/2;
  float yr2 = 400/2;
  float a = 10;
  float l = 150;
  raquete(boolean rkt ){
    if (rkt==false){
      xr = 790;
    } else{
      xr = 0;
    
    }
    
  }
  
  
  void oquehouve(){
  print("esse é o RANDOM **  A   **",a);
}
  void movraquete(float vel){
    yr = yr + vel;
    
}
  void limiteR(){
    if (yr > 250){
      boolean validapos =true;
      if(validapos ==true){
        yr = 250;
      } 
    }
    if (yr < 0){
      boolean validapos =true;
      if(validapos ==true){
        yr = 0;
      } 
    }
  
  }
  void mostraRaquete(){
    
    rect(xr,yr,a,l);
    if (b.m == true){
      fill(200,30,50);    
  }
    
  
    
        
}
}
//*CHAVE DA CLASSE//**/


void keyPressed(){
  if(key == 'w'){
    r.movraquete(-40);
  }
  if(key == 's'){
    r.movraquete(40);
  }
  if (key == CODED){
    if(keyCode == UP){
    r1.movraquete(-40);
    }
    if(keyCode ==DOWN){
    r1.movraquete(40);
    }
  }    
}
