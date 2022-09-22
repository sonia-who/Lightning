int startX = 0;
int startY = 250; 
int endX = 0;
int endY = 250;

void setup() {
  size(500,500);
  strokeWeight(5);
  background(0);
  // background(255, 255, 255);
  frameRate(60);
}

void draw() {
  // stroke((int)(Math.random()), (int)(Math.random()), (int)(Math.random()));
  
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, 600, 600);
  
  graphBackground();
  
  
  strokeWeight(2);
  stroke(255, 0, 0);
  if (endX <= 500) {
    endX = (int)(Math.random() * 20) + startX;
    
    if (endY > 350 || endY < 100 ) {
      endY = endY - 100;
    } else {
       endY = (int)(Math.random() * 30 - 15) + startY;  
    }
   
    
    line(startX, startY, endX, endY);
    
    startX = endX;
    startY = endY;
  }
  
  
}
void mousePressed() {
  startX = 0;
  startY = 250; 
  endX = 0;
  endY = 250;
}

void graphBackground() {
  strokeWeight(.5);
  stroke(180, 180, 180, 25);
  for(int y = 20; y < 500; y += 20) {
    
    //stroke(0, 255, 30);
    line (0, y, 500, y);
  }
  
  for(int x = 20; x < 500; x += 20) {
    // stroke(0, 255, 30);
    line (x, 0, x, 500);
  } 
}

void heart() {
  
}


