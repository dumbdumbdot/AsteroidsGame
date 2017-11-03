Spaceship a = new Spaceship();
Stars[] starry = new Stars[400];
Asteroid[] b = new Asteroid[10];

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < starry.length; i++)
  {
    starry[i] = new Stars();
  }
  for(int nI = 0; nI < b.length; nI++)
  {
    b[nI] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < starry.length; i++)
  {
    starry[i].show();
  }
  for ( int nI = 0; nI < b.length; nI++)
  {
    b[nI].show();
    b[nI].move();
  }
  a.show();
  a.move();
}

public void keyPressed()
{
  if (key == 's')
  {
    a.setX((int)(Math.random()*500)+1);
    a.setY((int)(Math.random()*500)+1);
    a.setDirectionX(0);
    a.setDirectionY(0);
    a.setPointDirection((int)(Math.random()*360)+1);
  }
  if (key == 'a')
  {
    a.turn(-10);
  }
  if (key == 'd')
  {
    a.turn(10);
  }
  if (key == 'w')
  {
    a.accelerate(0.4);
  }
  if (key == ' ')
  {
    
  }
}