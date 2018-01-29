'''
Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”

        _______6______
       /              \
    ___2__          ___8__
   /      \        /      \
   0      _4       7       9
         /  \
         3   5
For example, the lowest common ancestor (LCA) of nodes 2 and 8 is 6. Another example is LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.
'''

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
      @val = val
      @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def has_child(parent, child)
  return false if parent.nil?
  return true if parent == child
  has_child(parent.left, child) || has_child(parent.right, child)
end

def lowest_common_ancestor(root, p, q)
  return p if has_child(p,q) 
  return q if has_child(q,p)

  left = root.left
  right = root.right
  if has_child(left, p) && has_child(left, q)
    lowest_common_ancestor(left, p, q)
  elsif has_child(right, p) && has_child(right, q)
    lowest_common_ancestor(right, p, q)
  else
    root
  end
end

tree = TreeNode.new(6)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(8)
left = tree.left
right = tree.right
left.right =  TreeNode.new(4)
left_right = left.right
p left.right
p left_right

# p has_child(tree, left.right)

p lowest_common_ancestor(tree, left, right)