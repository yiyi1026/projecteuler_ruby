#p10
require 'prime'
p Prime.each(2000000).to_a.reduce(:+)


