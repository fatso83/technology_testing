boolean recording = false;
int pictures = 0;

int lightBlue = 0x6EA3D6;
int green = 0x99FF99;
int boxSz, outerBoxSz;

Boxy[] bokser;
int boxesPerDim = 8;

void setup() {
  //size(scaleX, scaleY, renderer)
  int winX = (int) (displayWidth*.8), winY = (int) (displayHeight*.8);

  winX = 640; 
  winY = 480;
  size(winX, winY, P3D);
  outerBoxSz = winX/4;
  boxSz = (outerBoxSz / boxesPerDim) / 2 ;

  bokser = createBoxes(boxesPerDim*boxesPerDim*boxesPerDim);
}

int fps=60, i=0, currentColor, pic;
float rot = 0;

void draw() {
  background(0);
  pushMatrix();

  roterOgGreier();

  for (Boxy b: bokser) b.rend();

  popMatrix();

  if (recording) {
    saveFrame("frames/pic####.png");
    pictures++;
    if(pictures%30 == 0) System.out.println(pictures/30 + " seconds of video");
  }
}

void roterOgGreier() {
  translate(width/2, height/2, 1 + mouseY * .5);

  rot += .5;
  rotateX(radians(rot));
  rotateY(radians(rot));
  rotateZ(radians(rot));
}

Boxy[] createBoxes(int number) {
  Boxy a[] = new Boxy[number];
  for (int i=0; i< number; i++) { 
    a[i] = new Boxy(boxSz, outerBoxSz);
  }

  return a;
}

void keyPressed() {
  // Finish the movie if space bar is pressed!
  if (key == ' ' ) {
    recording = recording == false? true : false;
    System.out.println("Recording: " + recording + " (" + pictures/30 + " seconds of video");
  }
}

