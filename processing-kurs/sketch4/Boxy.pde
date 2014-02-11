int created = 0;

class Boxy {
  private float bx;
  private float by;
  private float bz;
  private float rot;
  float r;
  float g;
  float b;
  float big;
  float rotSpeed;
  int size = 0;
  int offsetX, offsetY, offsetZ;


  Boxy(int size, int outerBoxSize) {
    //    bx = random(-outerBoxSize/2, outerBoxSize/2);
    //  by = random(-outerBoxSize/2, outerBoxSize/2);
    //bz = random(-outerBoxSize/2, outerBoxSize/2);
    
    offsetX = created%boxesPerDim * outerBoxSize/boxesPerDim;
    offsetY = (created/boxesPerDim)%boxesPerDim * outerBoxSize/boxesPerDim;
    offsetZ = (created/boxesPerDim/boxesPerDim)%boxesPerDim * outerBoxSize/boxesPerDim;
    
    bx = -outerBoxSize/2 + offsetX;
    by = -outerBoxSize/2 + offsetY;
    bz = -outerBoxSize/2 + offsetZ;


    big = random(10, 50);
    rot = random(100);
    rotSpeed = random(2);

    r = random(0, 200);
    g = random(0, 200);
    b = random(0, 200);

    this.size = size;
    created++;
  }

  void rend() {
    pushMatrix();
    translate(bx, by, bz);
    rotateX(radians(rot));
    rotateY(radians(rot));
    rotateZ(radians(rot));
    //stroke(255);
    noStroke();
    fill(r, g, b);
    box(this.size);
    popMatrix();
    rot+=rotSpeed;
  }
}

