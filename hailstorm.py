import math

NODE_SIZE = 3

class Tree:
    def __init__(self, value=0, left=None, right=None, down_gens=0):
        self.value = value
        self.left = None
        self.right = None
        #self.down_gens = down_gens
    
    def to_str(self):
        if self.value <= -1:
            return "-"*NODE_SIZE
            #return format(str(self.value), " ^4s")
            return (" "*NODE_SIZE)
        else:
            return format(str(self.value), " ^{}s".format(NODE_SIZE))


def recurseOut(parent, iteration, integer_set):
    integer_set.add(parent)
    if iteration <= 0 or parent == 0: return
    if (parent-1) % 3 == 0 and parent>1: recurseOut(int((parent-1)/3), iteration-1, integer_set)
    recurseOut(parent*2, iteration-1, integer_set)

def recTree(root, depth, memo):
    if depth == 0: return
    right_val = -1
    if (root.value-1)%3 == 0 and root.value > 1:
        right_val = (root.value-1)//3
    if right_val in memo:
        right_leaf = memo[right_val]
        root.right = right_leaf
    else:
        right_leaf = Tree(right_val)
        memo[right_val] = right_leaf
        root.right = right_leaf
        recTree(right_leaf, depth-1, memo)
        
    if (root.value * 2) in memo:
        left_leaf = memo[root.value * 2]
        root.left = left_leaf
    else:
        left_leaf = Tree(root.value * 2)
        memo[left_leaf.value] = left_leaf
        root.left = left_leaf
        recTree(left_leaf, depth-1, memo)

def prntTree(root, depth):
    row = [root]
    num_leaves = int(math.pow(2, depth-1))
    for i in range(depth):
        _row = []
        elems_on_row = int(math.pow(2, i))
        sp_buffer = (num_leaves*NODE_SIZE - elems_on_row*NODE_SIZE) // (2*elems_on_row)
        for r in row:
            print((sp_buffer*" ") + r.to_str() + (sp_buffer*" "), end="")
            _row.append(r.left)
            _row.append(r.right)
        row = _row
        print()

# list technique
#integer_set = set([])
#recurseOut(1, 10, integer_set)
#print(integer_set)
#sorted_list = sorted(list(integer_set))
#print(sorted_list)

# tree technique
depth = input("What depth?")
depth = int(depth) if len(depth)>0 else 5
root_val = input("What root?")
root_val = int(root_val) if len(root_val)>0 else 1

memo = {}
root = Tree(root_val)
recTree(root, depth, memo)
prntTree(root, depth)
#print(root.to_str())
#print(root.left.to_str(), root.right.to_str())

