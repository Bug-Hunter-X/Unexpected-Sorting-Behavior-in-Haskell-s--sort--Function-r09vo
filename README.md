# Haskell Sort Function Unexpected Behavior

This repository demonstrates an uncommon error related to the `sort` function in Haskell.  While `sort` is generally straightforward for simple data types like integers, it can produce unexpected results when dealing with more complex types such as tuples.

The issue stems from Haskell's default lexicographical comparison used by `sort`.  This means tuples are sorted primarily by their first element, then second, and so on.  This might not align with the intended sorting logic if you're expecting a different comparison.

The `bug.hs` file contains the buggy code, and `bugSolution.hs` offers a corrected approach using a custom comparison function for more fine-grained control over the sorting process. This example shows unexpected behavior when sorting tuples. 

## How to reproduce

1. Clone this repository.
2. Compile and run `bug.hs` using a Haskell compiler (GHC is recommended).
3. Observe the unexpected sorting output.
4. Compare the results with the corrected output from `bugSolution.hs`.
