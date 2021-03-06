module Test where

quadruple x = double (double x)

factorial n = product [1 .. n]

average ns = sum ns `div` length ns

bools :: [Bool]
bools = [True, False]

nums :: [[Int]]
nums = [[1, 2], [3, 4]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a, a)
copy x = (x, x)

apply :: (a -> b) -> a -> b
apply f x = f x

second :: [a] -> a
second xs = head (tail xs)

swap :: (b, a) -> (a, b)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x * 2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- 条件式
abs' :: Int -> Int
abs' n =
  if n >= 0
    then n
    else -n

-- ガード
signum' :: Int -> Int
signum' n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1

-- パターンマッチ
not' :: Bool -> Bool
not' False = True
not' True  = False

-- パターンマッチ(ワイルドカード)
(&&&) :: Bool -> Bool -> Bool
True &&& True = True
_ &&& _ = False

(&&&&) :: Bool -> Bool -> Bool
True &&&& b = b
False &&&& _ = False

(&&&&&) :: Bool -> Bool -> Bool
b &&&&& c | b == c = b
          | otherwise = False

-- タプルパターン
fst' :: (a,b) -> a
fst' (x,_) = x

-- リストパターン
test' :: [Char] -> Bool
test' ['a',_,_] = True
test' _ = False