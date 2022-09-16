float r = 40;
float px = r;
float py = 200;
float vx = 2;
float vy = 2;
float width_bat = 60;
float height_bat = 40;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  stroke(255);
  rect(mouseX, mouseY, width_bat, height_bat);
  ellipse(px, py, 2*r, 2*r);
  
  px = px + vx;
  py = py + vy;
  
  if(py > height - r){
    py = height - r - (py - (height - r));
    vy = -1 * vy;
  }
  if(py < r){
    py = r - (py - r);
    vy*=-1;
  }
  if(px > width - r){
    px = width - r - (px - (width - r));
    vx*=-1;
  }
  if(px < r){
    px = r - (px - r);
    vx*=-1;
  }
/*
if(px - r < mouseX + width_bat){vx*=-1;}
if(py + r > mouseY){vx*=-1;}
if(px + r > mouseX){vx*=-1;}
if(py - r < mouseX + height_bat){vx*=-1;}


void mousePressed(){
  px = mouseX;
  py = mouseY;
}
*/
if((px - r + vx < (mouseX + width_bat)) && (px + r + vx > mouseX)){
  if((py + r > mouseY) && (py - r < (mouseY+height_bat))){
  println("Im between left and right");
  vx*=-1;
  }
}
  if((py + r + vy > mouseY) && (py - r + vy < (mouseY+height_bat))){
    if((px - r < (mouseX+width_bat)) && (px + r > mouseX)){
    println("im between top and bot");
     vy*=-1;
}
}
}
