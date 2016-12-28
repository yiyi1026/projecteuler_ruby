#P33
def digit_cancelling_fractions(n)
  nom_lst=1
  den_lst=1
  for i in 11...n
    i_str=i.to_s.split('')
    for j in i+1...n
      j_str=j.to_s.split('')
      if i.to_f/j==i_str[0].to_f/j_str[1].to_f&&i_str[1]==j_str[0]&&i_str[0]!=j_str[1]
        nom_lst*=(i_str[0].to_i)
        den_lst*=(j_str[1].to_i)
      elsif (i.to_f/j==i_str[1].to_f/j_str[0].to_f&&i_str[0]==j_str[1])&&i_str[1]!=j_str[0]
        nom_lst*=(i_str[1].to_i)
        den_lst*=(j_str[0].to_i)
      end
    end
  end
  return nom_lst.to_s,den_lst.to_s
  
end
p digit_cancelling_fractions(99)

