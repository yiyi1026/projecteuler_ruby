def minSteps(n, b)
  # Complete this function
  i = 0
  cnt = 0
  b_arr = b.split("")
  while i < n - 2
    if b[i] == '0'
      if b[i + 1] == '1'
        if b[i + 2] == '0'
          cnt += 1
          b[i + 2] = '1'
        end
        i += 2
      else
        i += 1
      end
    else
      i += 1
    end

  end
  cnt
end

p minSteps(10,'01100')