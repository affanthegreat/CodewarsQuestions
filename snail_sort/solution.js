snail = function(a) {
  // enjoy
  let i, k = 0, l = 0;
  let m = a.length, n = a[0].length;
  res = []
  
    /*  k - starting row index 
        m - ending row index 
        l - starting column index 
        n - ending column index 
        i - iterator 
    */
  
    while (k < m && l < n) { 
        /* Print the first row from the remaining rows */
        for (i = l; i < n; ++i) { 
            res.push(a[k][i]); 
        } 
        k++; 
  
        /* Print the last column from the remaining columns 
         */
        for (i = k; i < m; ++i) { 
            res.push(a[i][n - 1]); 
        } 
        n--; 
  
        /* Print the last row from the remaining rows */
        if (k < m) { 
            for (i = n - 1; i >= l; --i) { 
                res.push(a[m - 1][i]); 
            } 
            m--; 
        } 
  
        /* Print the first column from the remaining columns 
         */
        if (l < n) { 
            for (i = m - 1; i >= k; --i) { 
                res.push(a[i][l]); 
            } 
            l++; 
        } 
    } 
  return res;
  
}