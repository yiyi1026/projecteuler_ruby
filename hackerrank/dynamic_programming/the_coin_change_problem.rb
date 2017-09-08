=begin
You have  types of coins available in infinite quantities where the value of each coin is given in the array . Can you determine the number of ways of making change for  units using the given types of coins? For example, if , and , we can make change for  units in three ways: , , and .

Given , , and , print the number of ways to make change for  units using any number of coins having the values given in .

Input Format

The first line contains two space-separated integers describing the respective values of  and . 
The second line contains  space-separated integers describing the respective values of  (the list of distinct coins available in infinite amounts).

Constraints

Each  is guaranteed to be distinct.
Hints

Solve overlapping subproblems using Dynamic Programming (DP): 
You can solve this problem recursively but will not pass all the test cases without optimizing to eliminate the overlapping subproblems. Think of a way to store and reference previously computed solutions to avoid solving the same subproblem multiple times.
Consider the degenerate cases: 
How many ways can you make change for  cents?
How many ways can you make change for  cents if you have no coins?
If you're having trouble defining your solutions store, then think about it in terms of the base case .
The answer may be larger than a -bit integer.
Output Format

Print a long integer denoting the number of ways we can get a sum of  from the given infinite supply of  types of coins.

=end