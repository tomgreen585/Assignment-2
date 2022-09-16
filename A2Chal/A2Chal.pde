void setup(){
  size(500,500);
  noLoop();
  noSmooth();
}

void myLine(float x0, float y0, float x1, float y1){
  
float a = (y1 - y0);
float b = (x1 - x0);
float c = (x1 * y0) - (y1 * x0);
int y = (int) y0;
int x = (int) x0;
float k = a * (x + 1) - (b * (y + 0.5)) + c;


  while (x <= round(x1)){
    point(x,y);
    if (k > 0){
      k = k + a;
    } else {
      k = k + a + b;
      y = y -1;
    }
    x = x + 1;
  }
}

void drawLine (float x0, float y0, float x1, float y1){
  scale (1);
  stroke(0,0,255);
  myLine(x0,y0,x1,y1);
  stroke(255,0,0);
  line(x0,y0,x1,y1);
}

void draw(){
  background(255);
  drawLine(0,0,1000,height);
  drawLine(0,0,1000,height/2);
  drawLine(0,0,1000,height*3);
  drawLine(0,0,1000,height*4);
  drawLine(width, height, 0, height/2);
  drawLine(0, height, width, height /2);
  drawLine(0,0,width, height/2);

  //drawLine(0, height, width, -height /2);
  //drawLine(width, 0, 0, height / 2);
  //drawLine(0, width, height, 0);
  //drawLine(height, width, height, 0);
  //drawLine(width, height,width,height);
  //drawLine(0,0,width,100);
  //drawLine(width,110,0,width);
  //drawLine(width/2,0,width/2*100,height);
}
