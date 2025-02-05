```haskell
import Data.List (sortWith)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- prints [1,2,3,4,5]
  let zs = sort $ [5,4,3,2,1]
  print zs -- prints [1,2,3,4,5]

  let a = [('a', 1), ('b', 2), ('c', 3)]
  let b = sort a
  print b -- prints [('a',1),('b',2),('c',3)]

  let c = [(1,'a'), (2,'b'), (3,'c')]
  let d = sort c
  print d -- prints [(1,'a'),(2,'b'),(3,'c')]

  let e = [(1, 'a'), (3, 'c'), (2, 'b')]
  let f = sort e
  print f -- prints [(1,'a'),(2,'b'),(3,'c')]

  let g = [(1, 'a'), (2, 'b'), (1, 'c')]
  let h = sortWith (
    (a,_) (b,_) -> compare a b
    ) g
  print h --prints [(1,'a'),(1,'c'),(2,'b')]

```