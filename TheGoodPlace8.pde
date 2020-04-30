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
Image yogurt = new Image();
Rect bg = new Rect();
SplashScreen scr = new SplashScreen();
int score=3;
int points=0;
int posc=0;
int level=1;
//String POSC= posc;
Text POSC = new Text();


void setup() {
  size(1300,800);
  background(255);
  sb.setImage("welcome.jpg");
  scr.gameName = "the good train";
  scr.backgroundColor= color(0,0,255);
  scr.gameAuthor1= "Gal";
  scr.gameAuthor2= "Baskin";
  scr.imagePath= "starttt.png";
  scr.imagepart= "frozen.png";
  scr.introMusic.load("the good place.mp3");
  bg.x=0;
  bg.y=0;
  bg.width= 1300;
  bg.height=575;
  bg.brush= color(255);
  over.x=0;
  over.y=0;
  over.width=1300;
  over.height=800;
  over.setImage("over.png");
  POSC.x= 60;
  POSC.y= 80;
  POSC.brush= color (90,70,100);
  POSC.textSize=50;
  POSC.text= posc+"";
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
  yogurt.x= 50;
  yogurt.y=100;
  yogurt.height= 145;
  yogurt.width= 120;
  yogurt.setImage("frozen.png");
  tr.width= 200;
  tr.height= 70;
  tr.x= 550;
  tr.y=500;
  tr.setImage ("train.jpg");
  tr.alpha= 80;
  j.width= 90;
  j.height= 140;
  j.y= (0);  
  j.x = int( random(0, 1300));
  j.setImage ("Janet.png");
 
}
void draw() {
 
  sb.draw();
  if (scr.show()==false){
  bg.draw();
  fire.draw();
  fir.draw();
  firee.draw();
  life.draw();
  lifee.draw();
  lif.draw();
  POSC.draw();
  
  if (score==0){
   over.width=1300;
   over.draw();
   tr.width=0;
   j.width=0;
  }if (j.y>=800 & lifee.width==0){
    life.width=0;
    score--;
  }else if (j.y>=800 & lif.width==0){
    lifee.width=0;
    score--;
  }else if (j.y>=800){
    lif.width=0;
    score--;
  } 
  
  if (j.y>=800){
    j.x = int( random(0, 1300));
    j.y=0;
    //j.y=j.y+5;
    
  }

  if (tr.pointInShape (j.x,j.y)){
     j.x = int( random(0, 1300));
     j.y=0;
     points++;
     posc++;
     
  }
  
  if (points==10){
    yogurt.draw();
    j.y=j.y+3;
    tr.speed=16;
    level++;
    points=0;
  }if (points==1){
      j.y=j.y+5;
  }
  
  if (level==3){
  }
  
  if (tr.x<=0){
    tr.direction=0;
  }
  if(tr.x>=1160) {
    tr.direction=180;
  }
  tr.draw();
 
  j.y=j.y+5;
  j.draw();
  }
  
}
  
  
  void keyPressed() {
  
  if (keyPressed){
    if (keyCode==RIGHT) {
    tr.speed= 12;
    tr.direction= 0;
    }
    
   
    if (keyCode==LEFT) {
    tr.speed= 12;
    tr.direction= 180;
    }
    
    if (keyCode==UP) {
    tr.speed= 0;
  }
  
    if (keyCode==ENTER) {
      tr.width=200;
      j.width=90;
      over.width=0;
      life.width=60;
      lif.width=60;
      lifee.width=60;
      score=3;
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

  
  
