void createInfo() {
  output.println("# Spiral No." + factor);
  output.println("");
  output.println("");
  output.println("## Document size: " + width + "x" + height);
  output.println("## Angle incement: TAU/" + factor);
  output.println("## Radius increment: " + spacing);
  output.println("## Initial radius: " + ir);
  output.println("## Final radius: " + radius);
  output.println("## Range: 1 - " + (number-1));

  for (int i = 0; i < numbers.length; i++) {
    output.println("###" + (i+1) + "|" + numbers[i]);
  }
  
  output.println("## Primes found: " + primefound);

  output.println("");
  output.println("## Prime pattern:");
  
  for (int i = 0; i < pattern.length; i++) {
    output.println("* " + (i+1) + "|" + pattern[i]);
  }
  output.flush();
  output.close();
}