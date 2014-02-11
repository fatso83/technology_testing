

void setup()  {
  //size(scaleX, scaleY, renderer)
  size(400, 400, P3D);
}

//noStroke();
//stroke(colour);
//noFill();
//fill(colour);
//fullscreen=ctrl+shif+r

int lightBlue = 0x6EA3D6;
int green = 0x99FF99;

void draw() {
    //background(R,G,B);  ev background(colour);
    background(lightBlue);
    rect(width/2, height/2, 140, 40 );
    fill(green);
    rect(0, height/2, 40, 140 );    
}
