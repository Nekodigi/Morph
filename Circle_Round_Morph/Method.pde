PVector morphSampling(float u, float fac, float n, float r){
  u *= n;
  float r1 = fac*r;
  float r2 = (1-fac)*r;
  for(float i = 0; i < n; i++){
    if(i <= u && u < i+1){
      PVector bp = new PVector(cos(i/n*TWO_PI)*r1, sin(i/n*TWO_PI)*r1);//base position
      PVector cp = PVector.fromAngle(map(u, 0, n, 0, TWO_PI)-PI/n).setMag(r2);//circle offset
      return bp.add(cp);
    }
  }
  return null;
}

float EaseInOutCubic(float start, float end, float t){
  end -= start;//calculate difference
  return t<0.5 ? end*4*t*t*t+start : end*(4*(t-1)*(t-1)*(t-1)+1)+start;
}