let binomial_tests = [
  ((0,0),1);
  ((1,0),1);
  ((2,0),1);
  ((3,0),1);
  ((4,0),1);
  ((5,0),1);
  ((6,0),1);
  ((7,0),1);
  ((8,0),1);
  ((9,0),1);
  ((10,0),1); 
  ((1,1),1);
  ((2,2),1);
  ((3,3),1); 
  ((2,1),2); 
  ((10,9),10); 
]

let factorial (number:int) : int =
  let rec innerHelper (accumulator:int) (number:int) : int = 
    if number=0 then accumulator
    else innerHelper (accumulator*number) (number-1)
  in innerHelper 1 number
          
let binomial (collectionN:int) (kThings:int) : int =
  factorial collectionN / (factorial kThings * factorial (collectionN-kThings)) 
