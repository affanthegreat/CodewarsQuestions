function findNextSquare(sq) {
    // Return the next square if sq is a perfect square, -1 otherwise
    let x = Math.sqrt(sq) 
    return (sq % Math.sqrt(sq) == 0) ? Math.pow(x+1,2) : -1 ;
  }