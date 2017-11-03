class Asteroid extends Floater
{
  private int sp;
  public Asteroid()
  {
    corners = 11;
    int [] xS = {0, 16, 12, 24, 12, -6, -14, -22, -30, -18, -5};
    int [] yS = {36, 28, 20, 10, -6, -6, 6, 2, 10, 34, 30};
    myColor = (191);
    xCorners = xS;
    yCorners = yS;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = 1;
    myDirectionY = 1;
    myPointDirection = 0;
    sp = ((int)(Math.random()*10)-5);
    if(sp == 0)
    {
      sp = 1;
    }
  }

  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }

  public void move ()   
  {      
    turn(sp);
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;         
    if(myCenterX >width + 20)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width + 20;    
    }    
    if(myCenterY >height + 20)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height + 20;    
    }   
  }
}