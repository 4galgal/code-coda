Image fire = new Image();
Image fir = new Image();
Image firee = new Image();
Image tr = new Image();
Image j = new Image();
Image life = new Image();
Image lifee = new Image();
Image lif = new Image();
Image over = new Image();
Image start = new Image();
Image sb = new Image();
Rect bg = new Rect();
int score=0;
 

void setup() {
  size(1300,800);
  background(255);
  bg.x=0;
  bg.y=0;
  bg.width= 1300;
  bg.height=575;
  bg.brush= color(255);
  over.width= 1300;
  over.height= 800;
  over.setImage ("over.jpg");
  fire.x= 0;
  fire.y= 575;
  fire.setImage ("fir.jpg");
  fir.x= 550;
  fir.y= 575;
  fir.setImage ("fir.jpg");
  firee.x= 1100;
  firee.y= 575;
  firee.setImage ("fir.jpg");
  life.width=60;
  life.height=60;
  life.x=1190;
  life.y= 65;
  life.setImage ("life.png");
  lifee.width=60;
  lifee.height=60;
  lifee.x=1120 ;
  lifee.y=65 ;
  lifee.setImage ("life.png");  
  lif.width=60;
  lif.height=60;
  lif.x=1050 ;
  lif.y=65 ;
  lif.setImage ("life.png");
  tr.width= 200;
  tr.height= 70;
  tr.x= 550;
  tr.y=500;
  tr.setImage ("train.jpg");
  j.width= 90;
  j.height= 140;
  j.y= (0);  
  j.x = int( random(0, 1300));
  j.setImage ("Janet.png");
  score=0;
 
}
void draw() {
 
  bg.draw();
  fire.draw();
  fir.draw();
  firee.draw();
  life.draw();
  lifee.draw();
  lif.draw();
  
  if (j.y==800 & lifee.width==0){
    life.width=0;
    score++;
  }else if (j.y==800 & lif.width==0){
    lifee.width=0;
    score++;
  }else if (j.y==800){
    lif.width=0;
    score++;
  } 
  
  if (j.y==800){
    j.x = int( random(0, 1300));
    j.y=0;
  }

  if (tr.pointInShape (j.x,j.y)){
     j.x = int( random(0, 1300));
     j.y=0;
  }
  
  if (tr.x<=0){
    tr.direction=0;
  }
  if(tr.x>=1160) {
    tr.direction=180;
    
    if (score==3){
      over.draw();
  }
  
  tr.draw();
 
  j.y=j.y+5;
  j.draw();
  }
}
  
  
  void keyPressed() {
  
  if (keyPressed){
    if (keyCode==RIGHT) {
    tr.speed= 8;
    tr.direction= 0;
    }
    
   
    if (keyCode==LEFT) {
    tr.speed= 8;
    tr.direction= 180;
    }
    
    if (keyCode==UP) {
    tr.speed= 0;
  }
  }
  }
  
  
  
  void keyReleased() {
  if (keyCode==LEFT) {
    tr.speed=0;
  }
  
  if (keyCode==RIGHT){
  tr.speed=0;
  }
  }

  
  
