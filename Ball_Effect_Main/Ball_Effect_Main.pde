Ball[] balls = new Ball[10000];


void setup() {
 size(1400,900); 
 frameRate(120);
 for (int i = 0; i < balls.length; i++) {
 balls[i] = new Ball(width/2,height/2,random(-8,8),random(-8,8),1,200);
 }
}

void draw() {
 background(30,40,50);
 noStroke();
 fill(255);
 rectMode(CORNER);
 rect(-1,-1,1401,10);
 rect(-1,890,1401,10);
 rect(-1,-1,10,901);
 rect(1401,-1,-10,901);
 
 for (int i = 0; i < balls.length; i++) {
 balls[i].control();
 }

}


 
