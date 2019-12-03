final int PLANET_COUNT=1;
planet[] planets=new planet[PLANET_COUNT];
void setup(){
  size(500,500);
  background(255);
  noStroke();
  for(int i=0;i<PLANET_COUNT;i++){
    planets[i]= new planet(200,0,0,-10);
  }
}

void draw(){
  fill(255,50);
  rect(0,0,width,height);
  translate(width/2,height/2);
  fill(0);
  ellipse(0,0,25,25);
  for(int i=0;i<PLANET_COUNT;i++){
    planets[i].update();
  }
  
  //saveFrame("Images/######.jpg");
}
