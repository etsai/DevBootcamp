# 1. Describe

Abstract data types: Is a data type that builds ontop of other data structures. It is a model of a kind of data structure that you build to use as a base case.

One example is:
  - Tree: a data structure that has a hierarchy with a root value and subtrees of children. These values are linked mainly to represent 1 to 2 relations

  - Graph: a data structure that links several data types with or without direction like a web.

# ------------
# 2. Implement

Tree:

Node = Struct.new(:parent, :left, :right)
root = Node.new
first_leaf = Node.new(root, "Jim", "Jen")
root.left = first_leaf

# ------------
# 3. Get real

Multi-User login where the account owner is the parent, or root. Other account holders could also have permission to the parent, and further down the chain other users could have even less permissions.