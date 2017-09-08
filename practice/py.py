def median(lst):
  lst.sort()
  # print 'list', lst
  length = len(lst)
  if length % 2 == 0 :
    right = length / 2
    sum = lst[right] + lst[right-1]
    if sum % 2 == 0:
      return sum/2
    else:
      return sum/2.0
  elif length == 1:
  	return lst[0]
  else :
    mid = length/2
    return lst[mid]

# print median([6,8,12,2,23])
# lst = [1,2,3]
# print ",".join(str(x) for x in lst)
