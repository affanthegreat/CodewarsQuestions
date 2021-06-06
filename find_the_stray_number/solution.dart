int stray(n) {
  n.sort();
  return (n[0] == n[1])?n.last:n.first; // your code here
}