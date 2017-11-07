PFont font;
float y = 100;
int x = 0;

void setup() {
  size(640, 320);
  stroke(255);
  frameRate(100);
  loop();
  y=height-1; //linejunk
  
  //String[] fontList = PFont.list();
  //printArray(fontList);

  font = createFont("Arial", 18, true);
  textFont(font);
}

void draw() {
  background(60, 70, 30);
   line(320, y, width, y); //linejunk
   
   //linejunk
   y = y-2;
   if (y < 0) {
     y = height;
   }


  String ap = "am";
  int h = hour();    // Values from 0 - 23
  int min = minute();  // Values from 0 - 59
  int s = second();  // Values from 0 - 59

  if (h == 0) {
    h = 12;
  }

  if (h > 12) {
    h = h%12;
    ap = "pm";
  }

  String minp;  
  if (min < 10) {
    minp = nf(min, 2);
  } else {
    minp = "" + min;
  }

  //String time = "" +  h + ":" + min + ":" + s + " " + ap; // h_m_s__m_d_y
  String time = h + ":" + minp; // h_m

  fill(255);
  textSize(100);
  textAlign(320, 130);
  text(time, width/2, height/2); 
  
 height = height - 1;
 if (height < 0) {
  }
}

void mousePressed() {
  loop();
  //println (time);
}