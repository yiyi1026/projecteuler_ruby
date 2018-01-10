'''
Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

You may assume that the intervals were initially sorted according to their start times.

Example 1:
Given intervals [1,3],[6,9], insert and merge [2,5] in as [1,5],[6,9].

Example 2:
Given [1,2],[3,5],[6,7],[8,10],[12,16], insert and merge [4,9] in as [1,2],[3,10],[12,16].

This is because the new interval [4,9] overlaps with [3,5],[6,7],[8,10].
'''
# Definition for an interval.
class Interval
    attr_accessor :start, :end
    def initialize(s=0, e=0)
        @start = s
        @end = e
    end
end

# @param {Interval[]} intervals
# @param {Interval} new_interval
# @return {Interval[]}
def merge_two(intervals, new_interval)
  return [new_interval] if intervals.empty?
	prev = intervals[0...-1]
	last = intervals.last
	last, new_interval = new_interval, last  if last.start > new_interval.start
	if last.end >= new_interval.start
			return prev + [Interval.new(last.start, [new_interval.end, last.end].max)]
	else
			return prev + [last, new_interval]
	end 
end

def insert(intervals, new_interval)
    sorted = intervals.sort_by{|itv|itv.start}
    sorted.reduce([new_interval]){|acc, el|acc = merge_two(acc, el)}
end

a2 = Interval.new(1,3)
a1 = Interval.new(2,6)
a3 = Interval.new(8,10)
a4 = Interval.new(15,18)
p insert([a1, a3, a4], a2)