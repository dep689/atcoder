import Data.List qualified as L

main::IO ()
main = do
    s <- getLine
    let counts1 = map length . L.group $ L.sort s
    let counts2 = map length . L.group $ L.sort counts1
    let answer = if all (== 2) counts2
        then "Yes"
        else "No"
    putStrLn answer
