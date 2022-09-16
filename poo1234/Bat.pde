public class Bat{
  
  //variables
  private float x, y, w, h;
  
  public Bat(){
    x = width/2;
    y = height - 60;
    w = 100;
    h = 20;
  }
  
  public void display(){
    fill(0,0,255);
    x = mouseX - w/2;
    y = mouseY - w/2;
    rect(x,y,w,h,8);
  } 
}
