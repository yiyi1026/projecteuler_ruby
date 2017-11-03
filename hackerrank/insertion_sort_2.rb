def  insertionSort(ar) 
  cnt = ar.length
   if cnt < 2
       puts ar
   else
       i = 1
       until i == cnt
           ar = sort_tmp(ar, i)
           puts ar.join(" ")
           i += 1
       end
       
   end
end

def sort_tmp(ar, idx)
   target = ar[idx]
   if ar[0] > target
       ar = [target] + ar[0...idx] + ar[idx+1..-1]
      #  puts ar.join(" ")
   else
       i = 1
       until i == idx
           if ar[i] > target
               ar = ar[0...i] + [target] + ar[i...idx] + ar[idx+1..-1]
               break
           end
           i += 1
           
       end
   end
   ar
            
end

insertionSort([2,3,4,5,6,7,1])
