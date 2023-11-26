lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER IS SEVEN!"
lucky x = "Sorry, you are out of lucky"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' [] = error "Can't call head' on an empty list, dummy!"
head' (x : _) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
-- tell (x : []) = "The list has one element: " ++ show x
-- tell (x : y : []) = "The list has two elements: " ++ show x ++ " and " ++ show y
-- When apply list literal to the above code
tell [x] = "The list has one element: " ++ show x
tell [x, y] = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x : y : _) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y
