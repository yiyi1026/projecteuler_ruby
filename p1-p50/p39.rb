#P39
#If p is the perimeter of a right angle triangle with integral length sides,
#{a,b,c}, there are exactly three solutions for p = 120.{20,48,52}, {24,45,51}, {30,40,50}
#For which value of p ≤ 1000, is the number of solutions maximized?

#solution step
#p=a+b+c
#a**2+b**2=c**2(c is the hypotenuse)
#a+b>c
#so max(a,b,c)<0.5*p
#b=(p**2-2*p*a)/(2*p-2*a)
timer_start=Time.now
def integer_right_triangles(n)
  result=0
  cnt_max=0
  for p in 3..n
    cnt=0
    for a in 1..(p-1)/2
      b=(p**2-2*p*a)/(2*p-2*a)
      if (p**2-2*p*a)%(2*p-2*a)==0&&b>=a
        cnt+=1
      end
    end
    if cnt>cnt_max
      cnt_max=cnt
      result=p 
    end
  end
  return result
end 
p integer_right_triangles(1000)
p "eclapse time is "+((Time.now-timer_start)*1000).to_s+" millisecond"  