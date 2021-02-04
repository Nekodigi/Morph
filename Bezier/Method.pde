void polygon_bezier(float i, float fac, float n, float r){
  float t = i+1;
  float halfL = (4.0/3.0)*r*tan(PI/(n*2.0))*fac;//based on this site https://stackoverflow.com/questions/1734745/how-to-create-circle-with-b%C3%A9zier-curves
  float theta1 = i/n*TWO_PI;
  PVector p1 = PVector.fromAngle(theta1).setMag(r);//start point
  PVector off1 = PVector.fromAngle(theta1+HALF_PI).setMag(halfL);//solve tangent of circle
  float theta2 = t/n*TWO_PI;
  PVector p2 = PVector.fromAngle(theta2).setMag(r);//end point
  PVector off2 = PVector.fromAngle(theta2-HALF_PI).setMag(halfL);//solve tangent of circle
  PVector p1c = PVector.add(p1, off1);
  PVector p2c = PVector.add(p2, off2);
  bezier(p1.x, p1.y, p1c.x, p1c.y, p2c.x, p2c.y, p2.x, p2.y);
}

float EaseInOutCubic(float start, float end, float t){
  end -= start;//calculate difference
  return t<0.5 ? end*4*t*t*t+start : end*(4*(t-1)*(t-1)*(t-1)+1)+start;
}