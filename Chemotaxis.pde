Fireflies[] bob;

void setup()
{
  size(500,500);
  bob = new Fireflies[750];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Fireflies();
  }
  
}

void draw(){
  background(15, 1, 21);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
    mousePos();
    }
  
  }

class Fireflies{
  int myX,myY,myColor;
  Fireflies()
  {
    myX = myY = 250;
    myColor = color(239, 255, (int)(Math.random()*200));
  }
  void move(){
    if(mouseX > myX && mouseY > myY){
      myX = myX + (int)(Math.random()*6)-1; // -1, 0, 1, 2, 3, 4
      myY = myY + (int)(Math.random()*6)-1;
    }
    else{
       myX = myX + (int)(Math.random()*6)-4;
       myY = myY + (int)(Math.random()*6)-4; // -4, -3, -2, -1, 0, 1
      }
    if((myX == mouseX)||(myY == mouseY))
     {
       myX = mouseX;
       myY = mouseY;
     }
  }
  void show()
  {
    noStroke();
    fill(myColor, (int)(Math.random()*200)+100);
    ellipse(myX, myY, 10, 10);
  }
}

void mousePos() {
  
  fill(255);
  ellipse(mouseX, mouseY, 20, 20);
  noCursor();
}

