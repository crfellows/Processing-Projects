class Ball {

float posX, posY, size, velX, velY, gravConst = 2, velGravity;
color colour;
 
 Ball(float startPosX,float startPosY,float startVelX, float startVelY,float startSize,color startColour) {
  posX = startPosX;
  posY = startPosY;
  velX = startVelX;
  velY = startVelY;
  size = startSize;
  colour = startColour;
 
 }
 
 void control() {
   display();
   move();
   collisionCheck();
   mouseAttract();
 }
 
 void display() {
  fill(colour);
  ellipse(posX,posY,size,size);
 }
 
 void move() {
  posX = posX + velX;
  posY = posY + velY;
  if (abs(velX) > 10) {
   velX = velX * 0.9; 
  }
  if (abs(velY) > 10) {
   velY = velY * 0.9; 
  }
 }
 
 void gravity() {
   velGravity +=gravConst;
   velY += velGravity;
 }
 
 void mouseAttract() {
   float speed = .005;
   if (mousePressed) {
    float distX = posX - mouseX;
    float distY = posY - mouseY;
    float dist = sqrt(sq(distX) + sq(posY-mouseY));
    float directionX = (distX / dist) * (speed * abs(distX));
    float directionY = (distY / dist) * (speed * abs(distY));
    
    velX -= directionX;
    velY -= directionY;
   }
 }
  
 void collisionCheck() {
  if(posY < (10 + (size/2))) {
   velY = velY * -0.99;
   velGravity = velGravity *-0.9;
  }
  if(posY > 890 - (size/2)) {
   velY = velY * -0.99; 
   velGravity = velGravity *-0.9;
  }
  if(posX < 10 + (size/2)){
    velX = velX * -0.99;
  }
  if(posX > 1390 - (size/2)){
    velX = velX * -0.99;
  }
 }
  
}
