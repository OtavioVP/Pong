
bola b;
bola b1;
raquete r;
raquete r1;

void setup(){
  size(800,400);
  //background(255);
  b = new bola();
  r = new raquete(true);
  r1 = new raquete(false);
  
}

void draw(){
  background(255);
  
  line(400, 800, 400,0 );
  b.desBola();
  b.desBola2();
  b.movBola();
  b.movBola2();
  b.bordas();
  b.ifoutposInicial();
  b.detectaColist(r1);
  b.detectaColis(r);

/**------------------------------------------------------------------------
---------------------------------------------------------------------------
/**/  
  r.limiteR();
  r1.limiteR();
  r.mostraRaquete();
  r1.mostraRaquete();
  r.movraquete(0);
  r.oquehouve();
}


class bola{
  float x = 800/2;
  float y = 400/2;
  float x1 = 800/2;
  float y1 = 400/2;
 
  float xp =6;
  float yp = 6;
  float xp1 = -6;
  float yp1 = -6;
  boolean a = false;
  //FAZER MAIS 2 VARIAVEIS DE CONTROLE
  boolean m = false;
  boolean m2 = false;
  
  
 
   
  void movBola(){
    x = x +xp;
    y = y +yp;
  }
  void movBola2(){
    x1 = x1+xp1;
    y1 = y1+yp1;
  }
  void desBola(){
    fill(0);
    circle(x, y, 35);
    if (b.m == true){
    fill(200,30,50);
  }
  }
    void desBola2(){
    fill(0);
    circle(x1, y1, 35);
    if (b.m2 == true){
    fill(50,40,200);
  }
  }
  void bordas(){
    if (y>400|| y<0 ){
      yp = yp * (-1);
 
  }
  if (y1>400|| y1<0 ){
      yp1 = yp1 * (-1);
     
    }
  }
  void ifoutposInicial(){
     if (x>800 || x <0){
       x = 800/2;
       y = 400/2;
       a = true;
       
     }
     if (x1>800 || x1 <0){
       x1 = 800/2;
       y1 = 380/2;
       a = true;
     
       
     
     }
   }
   
   
   void detectaColis(raquete r){
     
    if( b.x <= r.xr+20 && b.y >= r.yr && b.y <= r.yr+170 ){
      
      xp = xp*(-1);
      m2 = true;
    }
    if(xp > b.x){
      
    }
    if( b.x1 <= r.xr+20 && b.y1 >= r.yr && b.y1 <= r.yr+170 ){
      
      xp1 = xp1*(-1);
      m2 = false;
    }
   }
     void detectaColist(raquete r1){
     
    if( b.x>= r1.xr - 15 && b.y >= r1.yr && b.y <= r1.yr+170){  

     m = true;
     
     
      xp = xp*(-1); 
    }
    if( b.x1>= r1.xr - 15 && b.y1 >= r1.yr && b.y1 <= r1.yr+170){  

     m = false;
     
     
      xp1 = xp1*(-1); 
    }
    
 }
 
     
 }  
 
