boolean isOdd(int num) {
  boolean bool;
  // The low bit will always be set on an odd number.
  if ( (num & 1) == 0 ) { 
    bool = false;
  } else { 
    bool = true;
  }
  return bool;
}
 
 
 