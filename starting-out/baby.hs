doubleMe :: (Num a) => a -> a
doubleMe x = x + x

doubleUs :: (Num a) => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

listCompletion = [x * 2 | x <- [1 .. 10]]

excludeListComplition = [x | x <- [10 .. 20], x /= 13, x /= 15, x /= 19]

multipleListComplition = [x * y | x <- [2, 5, 10], y <- [8, 10, 11], x * y > 50]

nouns = ["hobo", "frog", "pope"]

adjectives = ["lazy", "grouchy", "scheming"]

sentence = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]
