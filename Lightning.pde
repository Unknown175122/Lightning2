//broken CRT

int startX = 200;
int startY = 200;
int endX = 200;
int endY = 0;

boolean lightning = false;

void setup()
{
  size(400,400);
  background(0);
  strokeWeight(3);
  rect(90,175,220,200, 35);
  rect(115,200,170,150);
  stroke(255);
  line(175,175,150,50);
  line(225,175,250,50);
  ellipse(153,65,30,30);
  ellipse(247,65,30,30);
}
void draw()
{
  if (!lightning) {
    stroke(0);
    triangle(200,245,200,295,100,270);
    noStroke();
    rect(198,230,20,75);
    stroke(0);
    arc(220,290,90,80,-PI/6,5*PI/6);
    arc(200,280,120,60,-PI/6,2*PI/3);
  }else{
    drawCrack();
    }
  
}
void mousePressed()
{
  if (!lightning){
    drawCRT();
    lightning = true;
  }
  
  
  }

void keyPressed() {
  lightning = false;
  drawCRT();
}

void drawCRT() {
  //clear();
  stroke(0);
  rect(90,175,220,200, 35);
  rect(115,200,170,150);
  stroke(255);
  line(175,175,150,50);
  line(225,175,250,50);
  ellipse(153,65,30,30);
  ellipse(247,65,30,30);
}

void drawCrack() {
while (endY<350) {
      stroke(0);
      endX = startX + (int)(Math.random() * 20) - 10;
      while(endX < 115) {endX += 1;} //keep from hitting the sides
      while(endX > 285) {endX -= 1;} //same
      
      endY = startY + (int)(Math.random() * 10);
      if (endY >350) {endY = 350;} //keep from not touching/going over bottom line
      
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
  }
      startX = (int)(Math.random()*151)+125;
      startY = 200;
      endX = startX;
      endY = 0;}
