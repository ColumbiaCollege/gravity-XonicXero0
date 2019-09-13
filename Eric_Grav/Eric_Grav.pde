//gravity project 

//starting float, variables, strings, etc
//spaceship movement 
float t;
//star movement 
float sx;
float sy;

void setup() {
  size(1200, 600);
  ellipseMode(RADIUS);
}

void draw() {
  background(#030303);

  //grid
  //stroke(255);
  //for (int i =1; i<18; i++) {
  //  line(100*i, 0, 100*i, 1000);
  //  line(0, 100*i, 1800, 100*i);
  //}

for (int star = 0; star < 1200; star = star + 10){ 
float r = random (595);
strokeWeight(0);
fill(#E7E8E1);
ellipse(1+star,1+r,2,2);
}

  //star(edited from old picture)
  strokeWeight(8);
  stroke(#1F1F1F);
  fill(#E7E8E1);
  ellipseMode(RADIUS);
  ellipse(-300+sx, 175+sy, 90, 90);
  strokeWeight(8);
  stroke(#FFF798);
  fill(#FFEC12);
  ellipseMode(RADIUS);
  ellipse(-300+sx, 175+sy, 60, 60);
  strokeWeight(6);
  stroke(#FFD012);
  fill(#FFC012);
  ellipseMode(RADIUS);
  ellipse(-300+sx, 175+sy, 50, 50);

//movement for star
sx = sx + .5;
sy = sy + .1;
//testing cords
println(sx);

//reset star position 
  if (sx > 1800) {
    sx = 0;
    sy = 0;
  }

  //spaceship 
  strokeWeight(1);
  stroke(#1F1F1F); 
  //fuel
  fill(#B98F24);
  ellipse(1250+t, 850+t, 35, 35); 
  //thrusttrail 
  fill(#FFFDB4);
  triangle(1275+t, 900+t, 1300+t, 875+t, 1450+t, 1050+t);
  //thrusttrail2 
  stroke(#FFFDB4);
  fill(#FFF0B4);
  triangle(1285+t, 900+t, 1300+t, 885+t, 1400+t, 1000+t);
  //engine
  stroke(#1F1F1F);
  fill(#81807E);
  ellipse(1275+t, 875+t, 25, 25); 
  //hull 
  fill(#A7A6A4);
  triangle(1250+t, 900+t, 1300+t, 850+t, 1150+t, 750+t);

  //movement for spaceship
  t = t - 2;
  //testing cords
  //println(t); 

  //reset spaceship position 
  if (t < -1500) {
    t = 0;
  }
}
