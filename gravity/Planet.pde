class planet{
  
  PVector pos;
  PVector vel;
  PVector grv;
  float gravity_weight=0;
  planet(float x,float y,float vx,float vy){
    pos = new PVector(x,y);
    
    vel = new PVector(vx,vy);
    grv = new PVector(-x,-y);
    gravity_weight=vel.mag()*vel.mag()/pos.mag();
    grv.normalize();
  }
  
  void update(){
    grv.add(pos.copy());
    grv = norm(grv);
    vel.add(grv.x*gravity_weight,grv.y*gravity_weight);
    pos.add(vel);
    
    fill(255,0,0);
    ellipse(pos.x,pos.y,50,50);
  }
  
  PVector norm(PVector vec){
    vec.mult(-1);
    vec.normalize();
    return vec;
  }
}
