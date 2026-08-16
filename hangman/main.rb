require 'json'
words_list = File.readlines("google-10000-english-no-swears.txt",chomp: true)
valid_list = words_list.select {|word| word.length > 4 && word.length < 12 }
secret_word = valid_list.sample

def load_game 
 saved_game = File.read("memory_card.json")
 saved_data_hash = JSON.parse(saved_game)
 saved_data_hash
end
def save_game(game)
  save_data = {
  "secret_word" => game.secret_word,
  "turns" => game.turns,
  "attempts" => game.attempts,
  "letters_used" => game.letters_used,
  "player_word" => game.player_word
  }
  json_saved_data = save_data.to_json
  File.write("memory_card.json", json_saved_data)
end
def exist_saved_data
  File.size("memory_card.json") > 0
end

class Game
  attr_accessor :secret_word, :turns,:attempts, :letters_used, :player_word, :game_running

  def initialize (secret_word, turns = 0, attempts = 0, letter_used = [], player_word = nil) 
    @secret_word = secret_word
    @turns = turns
    @attempts = attempts
    @letters_used = letter_used
    @player_word = player_word || Array.new(@secret_word.length,"_")
    @game_running = true
  end
  def guess(letter)
    @letters_used << letter
    @turns += 1
    if @secret_word.include?(letter)
      @secret_word.each_with_index do |e,i|
        @player_word[i] = e if letter == e
      end
    else 
      puts 'You are Wrong'
      @attempts += 1 
    end  
     if @secret_word == @player_word
      puts "You win the game."
      @game_running = false
     elsif @turns == 12 || @attempts == 6
      puts "You  lose the game"
      @game_running = false
     end
  end
  
  def display()
    puts @player_word.join(" ")
  end

end


valor = nil
while valor != "1" && valor != "2"
  puts "Welcome to the Hangman game."
  puts "Press 1 => New Game | 2 => Load Game  | During the game write 'sg' to save the game."
  valor = gets.chomp.downcase    
end
if valor == "1"
  hangman_game = Game.new(secret_word.chars)
elsif valor == "2"
  # {"secret_word":["h","e","l","l","o"],"turns":4,"attempts":2,"letters_used":["h","s","o","r"],"player_word":["h","_","_","_","o"]}
  if exist_saved_data
    saved_game = load_game
    hangman_game = Game.new(saved_game["secret_word"], saved_game["turns"], saved_game["attempts"], saved_game["letters_used"], saved_game["player_word"])   
    puts "Loaded successfully"
  else
    puts "You don't have saved games"
    hangman_game = Game.new(secret_word.chars)
  end  
end

while hangman_game.game_running
  hangman_game.display
  puts "Add a letter"
  letter = gets.chomp.downcase 
  if letter == "sg"
    hangman_game.game_running = false
    save_game(hangman_game)
  else
    hangman_game.guess(letter)
  end
end