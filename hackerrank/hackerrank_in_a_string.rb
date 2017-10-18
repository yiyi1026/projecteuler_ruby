str = 'hackerrank'
s = 'hereiamstackerrank'
s = s.downcase
len = s.length
i = 0
start = s.index(str[i])
while start && s[start] != 'k'
    i += 1
    start = s.index(str[i])
end
if s[start] == 'k'
    puts 'YES'
else
    puts 'NO'
end