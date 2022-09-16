float x = 140, y = 140;
float rx, ry;
float vx = -1, vy = -6;
boolean bounce1 = false, bounce2 = false, bounce3 = false;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  float rheight = 40;
  float rwidth = 80;
  float diam = 40;
  float rad = diam/2;
  
  fill(30,255,30);
  ellipse(x,y,diam,diam);
  x = x + vx;
  y = y + vy;
  
  fill(0,255,0);
  rx = mouseX - rwidth/2;
  ry = mouseY - rheight/2;
  rect(rx,ry,rwidth,rheight);
  
  if(x - diam / 2 < 0 || x + diam / 2 > width){
    vx = -vx;
  } else if (y - diam / 2 < 0 || y + diam / 2 > height){
    vy = -vy;
  }
  
  if (x + rad > rx && x - rad < rx + rwidth && y + rad > ry && y - rad < ry + rheight){
    if ( x + rad > rx && x < rx) {
      vx = -vx;
    }
    if(x - rad < rx + rwidth && x > rx + rwidth){
      vx = -vx;
    }
    if ( y + rad > ry && y < ry){
      vy = -vy;
    }
    if ( y - rad < ry + rheight && y > ry + rheight){
      vy =-vy;
    }
  }
  
  float x1 = 80, y1 = 80;
  

  rect(x1, y1, rwidth, rheight);


  if (bounce1 == true && bounce2 == false && bounce3 == false){
    fill(255, 255, 0);
    rect(x1,y1,rwidth,rheight);

  } else if (bounce1 == true && bounce2 == true && bounce3 == false){
    fill(255,0,0);
    rect(x1,y1,rwidth,rheight);
  
  } else if (bounce1 == true && bounce2 == true && bounce3 == true){
    fill(0,0,0);
    rect(x1,y1,rwidth,rheight);
  
  } else {
    fill(165,42,42);
  }
  
  if (x + rad > x1 && x - rad < x1 + rwidth && y + rad > y1 && y - rad < y1 + rheight){
    if (bounce1 == true && bounce2 == true && bounce3 == true || bounce1 == true && bounce2 == true && bounce3 == false || bounce1 == true && bounce2 == false && bounce3 == false || bounce1 == false && bounce2 == false && bounce3 == false){
      
      //left
      if (!bounce1 && !bounce2 && !bounce3){
        if(x+rad > x1 && x < x1){
          bounce1 = true;
          vx = -vx;
        }
      } else if (bounce1 && !bounce2 && !bounce3){
        if (x+rad > x1 && x < x1){
          bounce1 = true;
          bounce2 = true;
          vx = -vx;
        }
      } else if (bounce1 && bounce2 && !bounce3){
        if (x+rad > x1 && x < x1){
          bounce1 = true;
          bounce3 = true;
          vx = -vx;
        }
      }
      
      //right
      if (!bounce1 && !bounce2 && !bounce3){
        if (x + rad < x1 + rwidth && x > x1 + rwidth){
          bounce1 = true;
          vx = -vx;
        }
      } else if (bounce1 && !bounce2 && !bounce3){
        if (x - rad < x1 + rwidth && x > x1 + rwidth){
          bounce1 = true;
          bounce2 = true;
          vx = -vx;
        }
      } else if (bounce1 && bounce2 && !bounce3){
        if (x - rad < x1 + rwidth && x > x1 + rwidth){
          bounce1 = true;
          bounce2 = true;
          bounce3 = true;
          vx = -vx;
        }
      }
      
      //top
      if(!bounce1 && !bounce2 && !bounce3){
        if(y + rad > y1 && y < y1){
          bounce1 = true;
          vy = -vy;
        }
      } else if (bounce1 && !bounce2 && !bounce3){
        if (y + rad > y1 && y < y1){
          bounce1 = true;
          bounce2 = true;
          vy = -vy;
        }
      } else if (bounce1 && bounce2 && !bounce3){
        if (y + rad > y1 && y < y1){
          bounce1 = true;
          bounce2 = true;
          bounce3 = true;
          vy = -vy;
        }
      }
      
      //bottom
      if (!bounce1 && !bounce2 && !bounce3){
        if(y - rad < y1 + rheight && y > y1 + rheight){
        
          bounce1 = true;
          vy = -vy;
        }
      } else if (bounce1 && !bounce2 && !bounce3){
        if (y - rad < y1 + rheight && y > y1 + rheight){
      
          bounce1 = true;
          bounce2 = true;
          vy = -vy;
        }
      } else if (bounce1 && bounce2 && !bounce3){
        if (y - rad < y1 + rheight && y > y1 + rheight){
       
          bounce1 = true;
          bounce2 = true;
          bounce3 = true;
          
          vy = -vy;
    }}
 
    }}}
