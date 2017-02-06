---
---lab1 Knyazev Sergey
---


first = do 
  let myCortege = (( 1, 'a'), "abc" )
      result = snd (fst myCortege)
  print result

second = do 
  let myList = ["a", "b", "c"]
      result = head (tail myList)
  print result

third = do 
  let myList =[["a", "b"], ["c","d"]]
      result = head( tail (head myList) )

  print result

fourth = do 
  let myList = [["a", "c", "d"], ["a","b"]]
      result = head (tail ( head (tail myList) ) )
  print result

fifth = do 
  let myList = [["a","d"], ["b", "c"]]
      result = head (head (tail myList))
  print result

naturalNmbers = do
	let n = 20 
	    first = [1, 3..n]
	print first
	let second =[x + 1 | x <- [0, 2..(n - 1)]]
	print second
	let third = [x | x <- [1..n], x `mod` 2 == 1]
	print third
	let fourth = [ x | x <- [1..n], odd x]
	print fourth
	let fifth = [ x |
		x <- [1..20],
		x /= 2, 
		x /= 4, 
		x /= 6, 
		x /= 8, 
		x /= 10, 
		x /= 12, 
		x /= 14, 
		x /= 16, 
		x /= 18, 
		x /= 20]
	print fifth

triangularNumberFermat = do
	let result = [  round( 1 / 2 * n * (n + 1) )| n <- [0..50]]
	print result

pyramidalNumberFermat = do
	let result = [ round (n * (n + 1) * (2 * n + 1) / 6 ) | n <- [0..50]]
	print result 

main = do putStr "first "
          first  

          putStr "second "
          second

          putStr "third "
          third

          putStr "fourth "
          fourth

          putStr "fifth "
          fifth

          putStrLn "Natural numbers "
          naturalNmbers

          putStrLn "Triangular number fermat "
          triangularNumberFermat

          putStrLn " Pyramidal number fermat "
          pyramidalNumberFermat