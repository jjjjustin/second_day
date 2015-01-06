# Number Guessing Game
# try to guess a randomly generated number between 0 and 100

comp_num = rand(100)
guess_again = 0
guess_total = 0



 	

while guess_again == 0


puts "Guess a number between 0 and 100 please."
user_num = gets.chomp.to_i

	if user_num > comp_num
 		puts "Your guess is too high!\n"
 		guess_total += 1

 	elsif user_num < comp_num
 		puts "Your guess is too low!\n" 
 		guess_total +=1

	elsif user_num == comp_num
 		puts "You got it! Great job!\n"
 		guess_again += 1
 		guess_total += 1
 		 	puts "You made a total of #{guess_total} guesses before getting it right! Thanks for playing!"
	
	
 end

 end