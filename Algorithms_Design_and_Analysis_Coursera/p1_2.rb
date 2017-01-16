b=File.open("IntegerArray.txt", 'r')
a=[]
b.each_line do |line|
  line=line.rstrip
  a.push(line.to_i)
end

@cnt=0

def merge_sort(list_a, list_b)
  if list_a.is_a?(Integer)
    list_a = [list_a]
  end
  if list_b.is_a?(Integer)
    list_b = [list_b]
  end
  merge_length=list_a.length+list_b.length
  i=0
  j=0
  merge_list=[]
  for k in 0...merge_length
    if i==list_a.length
      merge_list=merge_list.concat(list_b[j, list_b.length-j])
      break
    elsif j==list_b.length
      merge_list=merge_list.concat(list_a[i, list_a.length-i])
      break
    end
    if list_a[i]>list_b[j]
      merge_list.push(list_b[j])
      @cnt+=list_a.length-i
      j+=1
    else
      merge_list.push(list_a[i])
      i+=1
    end
  end
  return merge_list
end

def recur_merge(lst)
  return lst if lst.length == 1
  merged_1st=recur_merge(lst[0,lst.length/2])
  merged_2nd=recur_merge(lst[(lst.length/2)...lst.length])
  merged = merge_sort(merged_1st,merged_2nd)
  # if prt
  # end
end



def pair_inversion(lst)
  while lst.length>1
    tmp=[]
    while true
      a=lst.shift
      b=lst.shift
      break if a.nil?
      if b.nil?
        merge_lst = a
      else
        merge_lst = merge_sort(a, b)
      end
      tmp.push(merge_lst)
    end
    lst = tmp
    # p @cnt
  end
  # p lst
  return @cnt
end

t = Time.now
recur_merge(a)
p @cnt
p Time.now - t

@cnt = 0


t = Time.now
pair_inversion(a)
p Time.now - t
# pair_inversion(['2','3','1'])
























