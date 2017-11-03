def  insertionSort( ar) 
  new_el = ar.last
  sorted_ar = ar[0...-1]
  # sorted_ar = [2,4,6,8]
  # new_el = [2]
  if sorted_ar.empty? || new_el >= sorted_ar.last
      puts ar
  else
    if new_el < sorted_ar.last
      puts (sorted_ar + [sorted_ar.last]).join(" ")
    end
    i = -2
    until i < - sorted_ar.length
      if new_el >= sorted_ar[i]
          puts (sorted_ar[0..i] + [new_el] + sorted_ar[i+1..-1]).join(" ")
          break
      else
          puts (sorted_ar[0..i] + sorted_ar[i..-1]).join(" ")

      end
      i -= 1
    end
  end
  # puts ([new_el] + sorted_ar).join(" ")
  

end
count = 5
ar = [2,4,6,8,3]

insertionSort( ar )