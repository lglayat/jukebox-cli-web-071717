songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to playru
- exit : exits this program"
end

def list(songArr)
  counter = 1
  songArr.each_with_index do |song, index|
    puts "#{counter}. #{song}"
    counter += 1
  end
end

def play(songArr)
	cond = false
  puts "Please enter a song name or number:"
  input = gets.chomp
	counter = 1

	songArr.each_with_index do |song, index|
		if counter == input.to_i || song == input
			puts "Playing #{song}"
      cond = true
		end
		counter += 1
	end

  if cond == false
	   puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songsArr)
  help
  puts "Please enter a command:"
  input = gets.chomp
  enteredExit = false

  while enteredExit == false do
    if input == "exit"
      exit_jukebox
      enteredExit = true
    elsif input == "list"
      list(songsArr)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "play"
      play(songsArr)
      puts "Please enter a command:"
      input = gets.chomp
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    else
      puts "Input not recognized. Please enter a command:"
      input = gets.chomp
    end
  end
end
