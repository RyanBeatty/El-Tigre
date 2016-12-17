
type Key = String

data Tree k v = Leaf | Node (Tree k v) k v (Tree k v)

member :: Tree Key b -> Key -> Bool
member Leaf _ = False
member (Node l k v r) key
  | key == k  = True
  | key < k   = member l key
  | otherwise = member r key 

insert :: Tree Key a -> Key -> a -> Tree Key a
insert Leaf k v = Node Leaf k v Leaf
insert (Node l k v r) key val
  | key == k  = Node l k val r
  | key < k   = Node (insert l key val) k v r
  | otherwise = Node l k v (insert r key val)

lookup' :: Tree Key a -> Key -> Maybe a
lookup' Leaf _ = Nothing
lookup' (Node l k v r) key
  | key == k  = Just v
  | key < k   = lookup' l key
  | otherwise = lookup' r key







