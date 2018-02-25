
int factor = 3;


import processing.pdf.*; 
PrintWriter output;
int primefound = 0;
int ir;

PFont font;



int number = 1;
int radius = 80;
int spacing; 
float angle;
int limit;
String[] pattern = new String[factor];
String[] numbers = new String[factor];

void setup() {
  size(1000, 1000);
  output = createWriter("output/spiral_"+factor+"/spiral_"+factor+".txt"); 
  font = createFont("font/Cousine-Regular.ttf", 10);
  // fill array with empty strings first
  for (int i = 0; i < factor; i++) {
    pattern[i] = "";
    numbers[i] = "";
  }
  ir = radius;
}

void draw() {
  beginRecord(PDF, "output/spiral_"+factor+"/spiral_"+factor+".pdf");
  background(255);
  limit = int(width * 0.4);
  createSpiral();
  endRecord();
  createInfo();
  exit();
}