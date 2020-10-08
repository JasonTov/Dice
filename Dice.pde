void setup()
{
  size(600,600);
  noLoop();
}
void draw()
{
  //your code here
  background(200,200,200);
  int total = 0;
  for(int x=60; x<600;x+=80)
  {
    for(int y=60; y<520; y+=80)
    {
      Die bob = new Die(x,y);
      bob.show();
      total += bob.n;
    }
  }
  stroke(0,0,0);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(total,300,520);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int n, x, y;
  
  Die(int x1, int y1) //constructor
  {
    //variable initializations here
    n = (int)(1+6*Math.random());
    x = x1;
    y = y1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    rect(x-20,y-20,40,40);
    if(n==1||n==3||n==5)
    {
      ellipse(x,y,5,5);
    }
    if(n==2||n==3)
    {
      ellipse(x+10,y-10,5,5);
      ellipse(x-10,y+10,5,5);
    }
    if(n==4||n==5)
    {
      ellipse(x-10,y-10,5,5);
      ellipse(x+10,y-10,5,5);
      ellipse(x-10,y+10,5,5);
      ellipse(x+10,y+10,5,5);
    }
    if(n==6)
    {
      ellipse(x-10,y-10,5,5);
      ellipse(x+10,y-10,5,5);
      ellipse(x-10,y,5,5);
      ellipse(x+10,y,5,5);
      ellipse(x-10,y+10,5,5);
      ellipse(x+10,y+10,5,5);
    }
  }
}
