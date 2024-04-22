import Data.Char qualified as C

isCodeOf::String -> String -> Bool
[] `isCodeOf` _ = True
"X" `isCodeOf` _ = True
_ `isCodeOf` [] = False
(x:xs) `isCodeOf` (y:ys)
    | C.toLower x == y = xs `isCodeOf` ys
    | otherwise        = (x:xs) `isCodeOf` ys

main::IO ()
main = do
    s <- getLine
    t <- getLine
    let answer = if t `isCodeOf` s
        then "Yes"
        else "No"
    putStr answer
