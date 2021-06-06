int numPrimorial(int x) {
  // your code here
 int n =100;
   var prime = List.filled(n,true);
   for (int p=2; p*p<=n; p++) 
    { 
      
        if (prime[p] == true) 
        { 
            for (int i=p*p; i<n; i += p) 
        
                prime[i] = false; 
        } 
    } 
    List<int> y = new List();
    // Print all prime numbers 
    for (int p=2; p<n; p++) {
       if (prime[p]){ 
        if(y.length == x){
         break;
        }
         y.add(p);
         }
      }

    var product = y.fold(1, (previous, current) => previous * current);
    return product;
  
}