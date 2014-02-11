int lightBlue = 0x6EA3D6;
int green = 0x99FF99;

void setup()  {
  //size(scaleX, scaleY, renderer)
  size(400, 400, P3D);
}

int fps=60, i=0, currentColor;
float rot = 0;
void draw() {
    if(currentColor % (fps*1000*3) == 0) background(currentColor);
    background( (int) (lightBlue) );
    translate(width/2, height/2);
    //rotateY(0.25*PI);
    //rotateZ(0.25*PI);
    
    fill(currentColor);
    rotateX(radians(40));
    rotateY(radians(rot));
    box(50);
    currentColor+=1000;
    rot+=1;
    
    box2();

    currentColor+=1000;
    rot+=1;     
}

void box2() {
    translate(width/4, height/4);

    fill(currentColor/2);
    rotateX(radians(20));
    rotateY(radians(rot*4));
    rotateZ(radians(rot));
    box(50);
}
