#Random Number Guesser

randomNum <- floor(runif(1,min=1,max=101))

print("I'm thinking of a number 1-100...")
x <- 1
while(x == 1){
  input <- readline(prompt="Guess: ")
  if(input == randomNum){
    print("Correct!")
    break
  }
  else if (input < randomNum){
    print("Too Low! Guess Again")
  }
  else{
    print("Too High! Guess Again")
  }
}
  