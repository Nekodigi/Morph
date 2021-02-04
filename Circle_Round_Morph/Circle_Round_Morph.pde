int n = 3;
int r = 1000;

void setup(){
  //size(1000, 1000);
  fullScreen();
  strokeJoin(ROUND);
  strokeWeight(20);
  r=height/3;
}

void keyPressed(){
  if(keyCode == UP){
    n++;
  }else if(keyCode == DOWN){
    n--;
  }
}

void draw(){
  background(255);
  float fac = EaseInOutCubic(0, 1, abs(float(frameCount)/200%2-1));
  translate(width/2, height/2);
  beginShape();
  for(float i = 0; i < 1; i+=0.02){
    PVector p = morphSampling(i, fac, n, r);
    vertex(p.x, p.y);
  }
  endShape(CLOSE);
}
