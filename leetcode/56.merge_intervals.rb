'''
Given a collection of intervals, merge all overlapping intervals.

For example,
Given [1,3],[2,6],[8,10],[15,18],
return [1,6],[8,10],[15,18].
'''

class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

# @param {Interval[]} intervals
# @return {Interval[]}
def merge_two(sorted, itv2)
	return [itv2] if sorted.empty?

	prev = sorted[0...-1]
	last = sorted.last
	last, itv2 = itv2, last  if last.start > itv2.start
	if last.end >= itv2.start
			return prev + [Interval.new(last.start, [itv2.end, last.end].max)]
	else
			return prev + [last, itv2]
	end
	
end

def merge(intervals)
    return intervals if intervals.length < 2
    sorted = intervals.sort_by{|itv|itv.start}
    sorted.reduce([]){|acc, el|acc = merge_two(acc, el)}
end
# [1,3],[2,6],[8,10],[15,18]
a2 = Interval.new(1,3)
a1 = Interval.new(2,6)
a3 = Interval.new(8,10)
a4 = Interval.new(15,18)
intervals = [a1,a2,a3,a4]

p merge(intervals)

# p merge_two([a2], a1)
