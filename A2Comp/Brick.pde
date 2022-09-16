public class Brick{
  private float x,y,w,h;
  private int numBricks;
  private boolean status;
  boolean bounce1 = false, bounce2 = false, bounce3 = false;
  
  public Brick(){
    x = 0;
    numBricks = 8;
    y = 0;
    w = width / numBricks;
    h = 30;
  }
  
   public Brick(int row, int col, int numOfBricks){
    numBricks = numOfBricks;
    w = width / numBricks;
    h = 30;
    x = row;
    y = col;
    status = true;
  }
  
  public void display(){
    stroke(0);
    strokeWeight(1);
    if(status){
      if (bounce1 == true && bounce2 == false && bounce3 == false){
        fill(255, 255, 0);
        rect(x,y,w,h);
    } else if (bounce1 == true && bounce2 == true && bounce3 == false){
        fill(255,0,0);
        rect(x,y,w,h);
    } else if (bounce1 == true && bounce2 == true && bounce3 == true){
        status = false;
    } else {
      fill(0,255,0);
      rect(x,y,w,h);
    }
  }
  }
  
  public void checkBall(Ball ball){
    //bottom,top,left,right 
    if(status){
      if (bounce1 == true && bounce2 == true && bounce3 == true || bounce1 == true && bounce2 == true && bounce3 == false || bounce1 == true && bounce2 == false && bounce3 == false || bounce1 == false && bounce2 == false && bounce3 == false){
       
       if (!bounce1 && !bounce2 && !bounce3){
         if(ball.x > x && ball.x < x + w && ball.y < (y + h + ball.d/2) && ball.y > y + h){
            ball.Vy*=-1;
            bounce1 = true;
            status = false;
          }
       } else if (bounce1 && !bounce2 && !bounce3){
           if(ball.x > x && ball.x < x + w && ball.y < (y + h + ball.d/2) && ball.y > y + h){
           bounce1 = true;
           bounce2 = true;
           ball.Vy*=-1;
         }
       } else if (bounce1 && bounce2 && !bounce3){
           if(ball.x > x && ball.x < x + w && ball.y < (y + h + ball.d/2) && ball.y > y + h){
           bounce1 = true;
           bounce2 = true;
           bounce3 = true;
           ball.Vy*=-1;
         }
       }
       
        if (!bounce1 && !bounce2 && !bounce3){
           if(ball.x > x && ball.x < x+w && ball.y > y-ball.d/2 && ball.y < y){
            bounce1 = true;
            ball.Vy*=-1;
          }
        } else if (bounce1 && !bounce2 && !bounce3){
           if(ball.x > x && ball.x < x+w && ball.y > y-ball.d/2 && ball.y < y){
            bounce1 = true;
            bounce2 = true;
            ball.Vy*=-1;
          }
        } else if (bounce1 && bounce2 && !bounce3){
           if(ball.x > x && ball.x < x+w && ball.y > y-ball.d/2 && ball.y < y){
            bounce1 = true;
            bounce2 = true;
            bounce3 = true;
            ball.Vy*=-1;
          }
        }
        
        if(!bounce1 && !bounce2 && !bounce3){
           if(ball.x > x - ball.d/2 && ball.y > y && ball.y < y+h && ball.x < x){
            bounce1 = true;
            ball.Vx*=-1;
          }
        } else if (bounce1 && !bounce2 && !bounce3){
           if(ball.x > x - ball.d/2 && ball.y > y && ball.y < y+h && ball.x < x){
            bounce1 = true;
            bounce2 = true;
            ball.Vx*=1;
          }
        } else if (bounce1 && bounce2 && !bounce3){
           if(ball.x > x - ball.d/2 && ball.y > y && ball.y < y+h && ball.x < x){
            bounce1 = true;
            bounce2 = true;
            bounce3 = true;
            ball.Vx*=1;
          }
        }
        
        if (!bounce1 && !bounce2 && !bounce3){
          if(ball.x > x+w  && ball.y > y && ball.y < y+h && ball.x<x+w+ball.d/2){
            bounce1 = true;
            ball.Vx*=-0.5;
          }
        } else if (bounce1 && !bounce2 && !bounce3){
          if(ball.x > x+w  && ball.y > y && ball.y < y+h && ball.x<x+w+ball.d/2){
            bounce1 = true;
            bounce2 = true;
            ball.Vx*=-1;
          }
        } else if (bounce1 && bounce2 && !bounce3){
         if(ball.x > x+w  && ball.y > y && ball.y < y+h && ball.x<x+w+ball.d/2){
            bounce1 = true;
            bounce2 = true;
            bounce3 = true;
            ball.Vx*=-1;
         }
        }
        }
    }
  }
}

        
