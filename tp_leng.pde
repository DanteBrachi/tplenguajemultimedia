boolean nogane = true;
float X, Y;
int cantMax =20, tam=25, originTam=25;
float AX1, AX2, AX3, AX4, AX5, AX6, AY1, AY2, AY3, AY4, AY5, AY6;
void setup() {
  size(800, 600, P3D);

  AX1 =random(originTam/2, width-originTam/2);
  AY1 = random(-originTam/2, -originTam*10);
  AX2 =random(originTam/2, width-originTam/2);
  AY2 = random(-originTam/2, -originTam*10);
  AX3 =random(originTam/2, width-originTam/2);
  AY3 = random(-originTam/2, -originTam*10);
  AX4 =random(originTam/2, width-originTam/2);
  AY4 = random(-originTam/2, -originTam*10);
  AX5 =random(originTam/2, width-originTam/2);
  AY5 = random(-originTam/2, -originTam*10);
  AX6 =random(originTam/2, width-originTam/2);
  AY6 = random(-originTam/2, -originTam*10);
}
void draw() {
  noCursor();
  // personaje
  background(255);
  if (nogane) {
    pushMatrix();
    fill(#039577);
    translate(width/2, 0);
    box(150);
    popMatrix();
    pushMatrix();
    stroke(0);
    strokeWeight(5);
    line(X, Y, width/2, 0);
    strokeWeight(1);
    
    popMatrix();
  }
  pushMatrix();
  stroke(#9B2411);
  fill(#C42D16);
  translate(X, Y);
  sphere(tam);
  popMatrix();
  X = mouseX;
  Y = height - height/10*3;
  //esfera
  AY1 +=5;
  AY2 +=5;
  AY3 +=5;
  AY4 +=5;
  AY5 +=5;
  AY6 +=5;
  pushMatrix();
  fill(#039577);
  translate(AX1, AY1);
  sphere(originTam);
  popMatrix();
  pushMatrix();
  fill(#039577);
  translate(AX2, AY2);
  sphere(originTam);
  popMatrix();
  pushMatrix();
  fill(#039577);
  translate(AX3, AY3);
  sphere(originTam);
  popMatrix();
  pushMatrix();
  fill(#039577);
  translate(AX4, AY4);
  box(originTam);
  popMatrix();
  pushMatrix();
  fill(#039577);
  translate(AX5, AY5);
  box(originTam);
  popMatrix();
  pushMatrix();
  fill(#039577);
  translate(AX6, AY6);
  box(originTam);
  popMatrix();
  if (AY1 >= height +originTam) {
    AX1 =random(originTam/2, width-originTam/2);
    AY1 = random(-50, -1000);
  }
  if (AY2 >= height +originTam) {
    AX2 =random(originTam/2, width-originTam/2);
    AY2 = random(-50, -1000);
  }
  if (AY3 >= height +originTam) {
    AX3 =random(originTam/2, width-originTam/2);
    AY3 = random(-50, -1000);
  }
  if (AY4 >= height +originTam) {
    AX4 =random(originTam/2, width-originTam/2);
    AY4 = random(-50, -1000);
  }
  if (AY5 >= height +originTam) {
    AX5 =random(originTam/2, width-originTam/2);
    AY5 = random(-50, -1000);
  }
  if (AY6 >= height +originTam) {
    AX6 =random(originTam/2, width-originTam/2);
    AY6 =random(-50, -1000);
  }
  if (dist(AX1, AY1, X, Y) <=tam/2+originTam/2) {
    AX1 =random(originTam/2, width-originTam/2);
    AY1 = random(-50, -1000);
    tam += 5;
  }
  if (dist(AX2, AY2, X, Y) <=tam/2+originTam/2) {
    AX2 =random(originTam/2, width-originTam/2);
    AY2 = random(-50, -1000);
    tam+=5;
  }
  if (dist(AX3, AY3, X, Y) <=tam/2+originTam/2) {
    AX3 =random(originTam/2, width-originTam/2);
    AY3 = random(-50, -1000);
    tam+=5;
  }
  if (dist(AX4, AY4, X, Y) <=tam/2+originTam/2) {
    AX4 =random(originTam/2, width-originTam/2);
    AY4 = random(-50, -1000);
    tam-=5;
  }
  if (dist(AX5, AY5, X, Y) <=tam/2+originTam/2) {
    AX5 =random(originTam/2, width-originTam/2);
    AY5 = random(-50, -1000);
    tam-=5;
  }
  if (dist(AX6, AY6, X, Y) <=tam/2+originTam/2) {
    AX6 =random(originTam/2, width-originTam/2);
    AY6 =random(-50, -1000);
    tam-=5;
  }
  if (tam>=100) {
    tam =100 ;
    nogane=false;
  }else nogane = true;
}
