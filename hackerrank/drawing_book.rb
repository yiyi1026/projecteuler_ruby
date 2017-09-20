def solve(n, p)
  front = p / 2
  back = (n % 2 == 0 ? (n-p+1) : (n-p))/2
  front <= back ? front : back
end