
arr = ['zero', 'one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty']

def word(h,m, arr)
  quar = 'quarter'
  half = 'half'
  past = 'past'
  result = ''

  right = ''

  if m > 30
    h += 1
    right = ' to '
  elsif m > 0
    right = ' past '

  end

  right += arr[h]
  left = ''

  if m > 45
    min = arr[60-m]
    left += "#{min} minutes"
  elsif m == 45
    left = quar
  elsif m > 30
    temp = 60 - m
    if temp > 20
      left += arr[20] + " "
      temp -= 20
      if temp > 0
        min = arr[temp]
        left += "#{min} minutes"
      end
    else
      min = arr[temp]
      left += "#{min} minutes"
    end

  elsif m == 30
    left = half
    
  elsif m == 15
    left = quar
  elsif m > 0
    if m >= 20
      left += arr[20] + " "
      m -= 20
    end
    if m > 1
      left += arr[m]
      left += " minutes"
    elsif m == 1
      left += arr[m]
      left += " minute"
    end

  else
    result += " o' clock "
  end

  return left + right + result
end
  
h = 6
m = 35
puts word(h, m, arr)
