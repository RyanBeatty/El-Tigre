-- Solutions for the exercises at the end of Chapter 1.

type Key = String

-- Tree data structure where every node contains a key
-- and a value associated with that key.
data Tree k v = Leaf | Node (Tree k v) k v (Tree k v)

-- Return True if Key is in the tree and false otherwise.
member :: Tree Key b -> Key -> Bool
member Leaf _ = False
member (Node l k v r) key
  | key == k  = True
  | key < k   = member l key
  | otherwise = member r key 

-- Insert a Key with a value in the tree if Key is not
-- in the tree, or update the already existing key with
-- the new value.
insert :: Tree Key a -> Key -> a -> Tree Key a
insert Leaf k v = Node Leaf k v Leaf
insert (Node l k v r) key val
  | key == k  = Node l k val r
  | key < k   = Node (insert l key val) k v r
  | otherwise = Node l k v (insert r key val)

-- Return the value associated with the key or nothing.
lookup' :: Tree Key a -> Key -> Maybe a
lookup' Leaf _ = Nothing
lookup' (Node l k v r) key
  | key == k  = Just v
  | key < k   = lookup' l key
  | otherwise = lookup' r key







