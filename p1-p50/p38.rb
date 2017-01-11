#p38
def pandigital_multiples
  result=0
  for i in 1..10000
    lst=''
    for j in 1..9
      lst=lst+(i*j).to_s
      break if lst.include?'0'
      lst_arr=lst.split("")
      if lst.length==9 && lst_arr.uniq.length==9 &&lst.to_i>result
        result=lst.to_i
      end
      break if lst.length>=9
    end
  end
  return result
end
p pandigital_multiples

