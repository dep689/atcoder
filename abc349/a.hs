
main::IO ()
main = do
    _    <- getLine
    line <- getLine
    let a::[Int] = map read . words $ line
    print $ negate (sum a)
