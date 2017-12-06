SpaceShip a = new SpaceShip();
Stars[] starry = new Stars[400];
ArrayList <Asteroid> b = new ArrayList <Asteroid>();
ArrayList <Bullet> c = new ArrayList <Bullet>();

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
  for (int nI = b.size()-1; nI >= 0; nI--)
  {
    b.get(nI).show();
    int bx = b.get(nI).getX();
    int by = b.get(nI).getY();
    int ax = a.getX();
    int ay = a.getY();
    int d = (int)(dist(bx, by, ax, ay));
    if (d > 20)
    {
      b.get(nI).move();
    } else
    {
      b.remove(nI);
    }
  }
  a.show();
  a.move();
  for ( int i = 0; i < c.size(); i++)
  {
    c.get(i).show();
    c.get(i).move();
    
    for (int i2 = b.size()-1; i2 >= 0; i2--)
    {
      int cx = c.get(i).getX();
      int cy = c.get(i).getY();
      int bx = b.get(i2).getX();
      int by = b.get(i2).getY();
      int d2 = (int)(dist(cx, cy, bx, by));
      if ( d2 < 20)
      {
        b.remove(i2);
        c.remove(i);
        break;
      }
    }
    }
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
      Bullet x = new Bullet(a);
      c.add(x);
    }
  }