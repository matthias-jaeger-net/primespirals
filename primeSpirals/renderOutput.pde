void renderOutput() {
  output.println("# Spiral No." + factor);
  output.println("![Spiral No. "+factor+"](spiral_" + factor + ".jpg)");
  output.println("I created a spiral in an " + width + "by" + height + "document");
  output.println("with an angle incement of TAU/" + factor);
  output.println(". The rate of growth was " + spacing);
  output.println("and the initial radius was " + ir);
  output.println(". The algorithm stopped at the final radius: " + radius);
  output.println("and created numbers ranging from 1 to " + (number-1) + ".");
  output.println("# Numbers");
  for (int i = 0; i < numbers.length; i++) {
    output.println(numbers[i]);
  }
  output.println("");
  output.println("## " + primefound + " primes found:");
  for (int i = 0; i < pattern.length; i++) {
    output.println(pattern[i]);
  }
  output.flush();
  output.close();
  saveFrame(path + ".jpg");
}