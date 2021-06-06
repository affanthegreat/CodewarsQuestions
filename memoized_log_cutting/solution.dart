// Your new function as given to you by me, your boss.
Function cutLog = (List p, int n) {

List r = List.filled(n+1,0);

  for (int j = 1; j <= n; j++) {
     int q =-12334;
    for (int i = 1; i <= j; i++) {
      if(q >( p[i] + r[j-i]))
       q=q;
      else q = p[i] + r[j-i];
    }
    r[j]= q;
  }
  return r[n];// good luck intern!
};
