# prompts one user for a word or phrase.
# number of guesses is related to the length of word or phrase.
# repeated guesses do not count against the user. (
# uses hangman style _ _ C _ _ T _ and shows letters.
# player receives congratulatory message at the end if they win/taunt if lose.

class GuessGame
  attr_accessor :board, :phrase, :words, :phraseletters, :guess_count, :is_over, :guesses_remaining
  
  def initialize
    puts "Welcome to the guessing game!"
    puts "Player 1: please enter the phrase Player 2 will guess at!"
    @phrase = gets.chomp.downcase
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    @guess_count = 0
    @is_over = false
    @guesses_remaining = @phrase.length + 3
    @previous_guesses = []
  end
  
  # sets up a board with blanks and spaces
  # counts up # of letters and words
  def setup
    @board = []
    @words = 1
    for i in 0...@phrase.length
      if @phrase[i] == " "
        @board << " "
        @words += 1
      else
        @board << "_"
      end
    end
    @phraseletters = @phrase.length + 1 - words
    @remaining = phraseletters
    @board = @board.join
  end
  
  #prints out the board with blanks.
  #prints out the number of words in phrase.
  #prints out number of letters in phrase.
  def boardprint
    p @board
    puts "#{@words}" + " words"
    puts "#{@phraseletters}" + " letters overall"
    puts "#{guess_count}" + " guesses made / ""#{@guesses_remaining}" + " guesses remaining"
    puts "#{@remaining}" + " letters remaining"
  end
  
  def guess(letter)
    letter.downcase!
    if !@previous_guesses.include?(letter)
      @guess_count += 1
      @guesses_remaining -= 1
      for i in 0...@phrase.length
        if @phrase[i] == letter
          @board[i] = letter
          @remaining -= 1
        end
      end
    end
    @previous_guesses << letter
    

    if @remaining == 0 || @guesses_remaining == 0
      @is_over = true
    else
      false
    end
    boardprint
  end
end

newgame = GuessGame.new
newgame.setup
newgame.boardprint

while !newgame.is_over
  puts "Player 2: What letter would you like to guess?"
  newgame.guess(gets.chomp)
end

if newgame.guesses_remaining > 0
  puts "GOOD JOB PLAYER 2! You succeeded in #{newgame.guess_count} guesses."
else
  puts "PLAYER 2 HAS FAILED! GUESS BETTER NEXT TIME!"
end