-- This SQL query classifies nodes in a binary search tree (BST) as 'Root', 'Inner', or 'Leaf'.
-- It selects the node value and its classification based on its parent-child relationship.
-- The 'Root' node has no parent, 'Inner' nodes have children, and 'Leaf' nodes have no children.
SELECT BT.N,
CASE
    WHEN BT.P IS NULL THEN 'Root'
    WHEN EXISTS (SELECT B.P FROM BST B WHERE B.P = BT.N) THEN 'Inner'        
    ELSE 'Leaf'
END
FROM BST AS BT 
ORDER BY BT.N