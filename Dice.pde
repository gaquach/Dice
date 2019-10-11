void setup()
{
  noLoop();
  size(501, 570);
}
void draw()
{
  //your code here
  background(255);
  int sum = 0;
  for(int y = 0; y <= 500; y+=25){
    for(int x = 0; x <= 500; x+=25){
      Die qw = new Die(x,y);
      qw.show();
      sum += qw.nums; 
    }
  }
  fill(0);
  text("You rolled a sum of "+ sum + "!", 195, 550);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int nums ;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
    
  }
  void roll()
  {
    //your code here
     nums = ((int)(Math.random()*6)+1);
   }
  void show()
  {
    //your code here
    stroke(255);
    fill((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
    rect(myX, myY, 25, 25);
    fill(255);
    if(nums == 1){
      ellipse(myX+13, myY+13, 5, 5);
    }else if(nums == 2){
      ellipse(myX+7, myY+7, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
    }else if(nums == 3){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+19, myY+19, 5, 5);
    }else if(nums == 4){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }else if(nums == 5){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
    }else if(nums == 6){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+5, myY+13, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+20, myY+13, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }
  }
}
