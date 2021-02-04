int n = 3;
int r = 1000;

void setup(){
   //size(500, 500);
   fullScreen();
   strokeWeight(20);
   noFill();
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
   for(float i = 0; i < n; i++){
     polygon_bezier(i, fac, n, r);
   }
}