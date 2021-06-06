def exp_sum(n):
  if n < 0:
    return 0
  dp = [1]+[0]*n
  for num in range(1,n+1):
    for i in range(num,n+1):
      dp[i] += dp[i-num]
  return dp[-1]