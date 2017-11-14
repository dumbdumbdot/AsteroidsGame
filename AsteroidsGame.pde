Spaceship a = new Spaceship();
Stars[] starry = new Stars[400];
ArrayList <Asteroid> b = new ArrayList <Asteroid>();


public void setup() 
{
  size(500, 500);
  for (int i = 0; i < starry.length; i++)
  {
    starry[i] = new Stars();
  }
  for (int n = 0; n <=12; n++)
  {
    Asteroid nn = new Asteroid();
    b.add(nn);
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < starry.length; i++)
  {
    starry[i].show();
  }
  for ( int nI = 0; nI < b.size(); nI++)
  {
    b.get(nI).show();

    int d = dist((b.get(nI).getX()), (b.get(nI).getY()), (a.getX()), (a.getY()))
    if (d > 20)
    {
      b.get(nI).move();
    } 
    else
    {
      b.remove(nI);
    }
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