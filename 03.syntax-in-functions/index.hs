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

length' :: String -> Int
length' [] = 0
length' (x : xs) = 1 + length' xs

-- By using foldr, this above code becomes concise
-- length' = foldr (\x -> (+) 1) 0

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

-- Using guard
max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

densityTell :: (RealFloat a) => a -> a -> String
densityTell mass volume
  | density < air = "Wow! You're going for a ride in the sky!"
  | density <= water = "Have fun swimming, but watch out for sharks!"
  | otherwise = "If it's sink or swim, you're going to sink."
  where
    density = mass / volume
    air = 1.2
    water = 1000.0
