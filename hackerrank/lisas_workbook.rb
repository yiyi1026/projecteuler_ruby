
cnt = 0
cur_page = 0
# i for current chapter
i = 1
if k == 1
  puts pages[0]
else
  while i <= n
    # chapter_size for the number of problems in i-th chapter
    # cur_page += 1
    chapter_size = pages[i-1]
    for j in 1..chapter_size
      cur_page += 1 if j % k == 1
      case cur_page <=> j
      when 0
        cnt += 1
      end
    end

    i += 1
  end
  p cnt
end


