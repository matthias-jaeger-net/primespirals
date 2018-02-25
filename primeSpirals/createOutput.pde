void createOutput() {
  output.println("# Spiral No." + factor);
  output.println("");
  output.println("![Spiral No. "+factor+"](output/spiral_" + factor + "/spiral_" + factor + ".jpg)");
  output.println("");
  output.println("I created a spiral in an " + width + "by" + height + "document");
  output.println("with an angle incement of TAU/" + factor);
  output.println(". The rate of growth was " + spacing);
  output.println("and the initial radius was " + ir);
  output.println(". The algorithm stopped at the final radius: " + radius);
  output.println("and created numbers ranging from 1 to " + (number-1) + ".");

  output.println("# Numbers");

  for (int i = 0; i < numbers.length; i++) {
    output.println("1. " + numbers[i]);
  }
  
  output.println("## Primes found: " + primefound);

  output.println("");
  output.println("## Prime pattern:");
  
  for (int i = 0; i < pattern.length; i++) {
    output.println("1. " + (i+1) + "|" + pattern[i]);
  }
  output.flush();
  output.close();
  
  saveFrame("output/spiral_" + factor + "/spiral_" + factor + ".jpg");
}