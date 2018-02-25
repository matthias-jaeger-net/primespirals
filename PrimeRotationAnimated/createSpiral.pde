void createSpiral() {

  int current = 0;

  while (radius <= limit) {    
    numbers[current] += number + ", ";

    if (isPrime(number)) {
      fill(255, 20, 20);
      pattern[current] += " █ ";
      primefound++;
    } else {
      fill(0);
      pattern[current] += " . ";
    }
    
    current++;
    if (current >= factor) {
      current = 0;
    }
    float x = radius * cos(angle) + width/2;
    float y = radius * sin(angle) + height/2;

    textFont(font);
    textAlign(CENTER, CENTER);
    text(number, x, y);

    if (factor == 1) {
      spacing = 20;
    } else if(factor > 1 && factor < 8){
      spacing = 10;
    } else {
      spacing = 2;
    }

    angle += TAU/factor;
    radius += spacing;
    number++;
  }
}