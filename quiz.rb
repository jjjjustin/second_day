QUESTIONS = [

{
	:name    => "What is the command to create a new git repo",
	:answers => [
		'git new',
		'git init',
		'new git repo',
		'creat-github',
	],
	:correct_answer => 1
},
{
 	:name    => "What is your favorite sushi",
 	:answers => [
 		'Cali Roll',
 		'Spicy Tuna Roll',
 		'Sweet Potato Roll',
 		'Tokyo Roll',
 	],
 	:correct_answer => 1
 },

 {
 	:name    => "How many chairs are in this room",
 	:answers => [
 		10,
 		1, 
 		11, 
 		9,
 	],
 	:correct_answer => 2

  },
 	{
 		:name    => "Who was the city of Austin named for?",
 		:answers => [
 			'"Stone Cold" Steve Austin', 
 			'Stephen F. Austin',
 			'The Six Million Dollar Man',
 			'Austin Powers'
		],
		:correct_answer => 1
	},
	{
		:name    => "What's the tallest building in Texas?",
		:answers => [
			'The State Capital Building',
			'The Tower of the Americas',
			'The JPMorgan Chase Tower',
			'The Austonian'
		],
		:correct_answer => 2
	}
]
puts "Welcome to the quiz show".upcase
puts "-" * 25
correct_answers = 0
QUESTIONS.shuffle.each do |question|
	puts question[:name]
	puts "-" * 25
	question[:answers].each_with_index do |answer, index|
		puts "#{index + 1}) #{answer}"
	end
	print '(1-4) -> '
	user_answer = gets.chomp

	if user_answer.to_i == question[:correct_answer] + 1
		puts "CORRECT"
		correct_answers += 1
	else
		puts "INCORRECT"
		puts "\7"

	end
end
correct = correct_answers.to_f
total = QUESTIONS.count.to_f


puts "You got #{correct_answers} out of #{QUESTIONS.count} correct for a score of:"
puts "#{(correct / total * 100)} %"
