class Asteroid extends Floater 
{
  private int myRotationSpeed;
  
  public Asteroid()
  {
  corners = 0;
  xCorners = new int [corners];
  yCorners = new int [corners];
  myColor = 0;
  myRotationSpeed = (int)(Math.random()*12)-6;
  myCenterX = (int)(Math.random()*501); 
  myCenterY = (int)(Math.random()*501); //holds center coordinates   
  myXspeed = (int)(Math.random()*2)+1; 
  myYspeed = myXspeed; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //(int) (Math.random()*361)
  }//end of contrsuctor
  
  public void addPointDirection(int num) {myPointDirection += num;}
  public int getRotationSpeed(){return myRotationSpeed;}
  public int getX(){return (int)myCenterX;}
  public int getY(){return (int)myCenterY;}
  
  public void show()
  {
    translate((float)myCenterX, (float)myCenterY);
    noFill();
    stroke(105);
    
beginShape();
vertex(-4,4);//1
vertex(-4,-4);//2
vertex(4,-4);//3
vertex(4,4);//4
vertex(-4,4);//5
vertex(-4,12);//6
vertex(12,12);//7
vertex(12,-4);//8
vertex(-4,-4);//9
vertex(-4,4);//10
vertex(4,4);
vertex(12,12);//12
vertex(-4,12);
vertex(-12,4);//14
vertex(-12,-12);
vertex(-4,-4);//16
vertex(-4,4);
vertex(-12,4);
vertex(4,4);
vertex(4,-12);
vertex(-12,-12);
vertex(4,-12);
vertex(12,-4);
endShape();
translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }//end of show
  
  public void move()
  {
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    super.move();
    rotate(-2*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
}//end of asteroid
