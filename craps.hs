import System.Random

play :: [Char] -> IO ()
play pass = 
   do 
      putStrLn "\n The dice are rolling...\n"

      a <- randomRIO (1, 6 :: Int)
      putStrLn . show $ a

      putStrLn "&"

      b <- randomRIO (1, 6 :: Int)
      putStrLn . show $ b
      
      let sum = a + b

      putStrLn "="
      
      putStrLn . show $ sum
      
      
      if pass=="p"
         then 
            case sum of
               7  -> putStrLn "\n   You WIN! \n"
               11 -> putStrLn "\n   You WIN! \n!"
               2  -> putStrLn "\n   You lose \n"
               3  -> putStrLn "\n   You lose \n"
               12 -> putStrLn "\n   You lose \n"
               _  -> putStrLn "\n   No score \n"

                  
         else if pass=="n"
            then 
               case sum of
               7  -> putStrLn "\n   You lose \n"
               11 -> putStrLn "\n   You lose \n"
               2  -> putStrLn "\n   You WIN! \n"
               3  -> putStrLn "\n   You WIN! \n"
               12 -> putStrLn "\n   You WIN! \n"
               _  -> putStrLn "\n   No score \n"

         else
            putStrLn "Bet not recognised"        

            
main = do
      putStrLn "\n Welcome to the Craps game!"
      putStrLn "\n Enter 'p' for PASS, or 'n' for DON'T PASS...\n"
      pass <- getLine
      play pass
      