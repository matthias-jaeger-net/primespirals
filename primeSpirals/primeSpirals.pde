import processing.pdf.*; 
PrintWriter output;
PFont font;
int factor = 2;
int primefound = 0;
int ir;
int number = 1;
int radius = 80;
int spacing; 
float angle;
int limit;
String[] pattern = new String[factor];
String[] numbers = new String[factor];

void setup() {
  size(900, 900);
  output = createWriter("output/spiral_" + factor + "/spiral_" + factor + ".md"); 
  font = createFont("font/Cousine-Regular.ttf", 12);
  // fill array with empty strings first
  for (int i = 0; i < factor; i++) {
    pattern[i] = "";
    numbers[i] = "";
  }
  ir = radius;
}

void draw() {
  beginRecord(PDF, "output/spiral_" + factor + "/spiral_" +factor+".pdf");
  background(224);
  limit = int(width * 0.4);
  createSpiral();
  endRecord();
  createOutput();
  exit();
}