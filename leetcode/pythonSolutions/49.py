'''
49. Group Anagrams
Medium

Share
Given an array of strings, group anagrams together.

Example:

Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
Output:
[
  ["ate","eat","tea"],
  ["nat","tan"],
  ["bat"]
]
Note:

All inputs will be in lowercase.
The order of your output does not matter.
'''

class Solution:
    def groupAnagrams(self, strs):
        """
        :type strs: List[str]
        :rtype: List[List[str]]
        """
        """
        :type strs: List[str]
        :rtype: List[List[str]]
        """
        hash = {}
        
        result = []
        j = 0
        for s in strs:
          sortedS = "".join(sorted(list(s)))

          if sortedS in hash:
            idx = hash[sortedS]
            result[idx].append(s)
          else:
            result.append([s])
            hash[sortedS] = j
            j += 1
        return result
          
input = ["eat", "tea", "tan", "ate", "nat", "bat"]
output = [
  ["ate","eat","tea"],
  ["nat","tan"],
  ["bat"]
]

sol = Solution()


