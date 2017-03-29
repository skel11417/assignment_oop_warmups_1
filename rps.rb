## Rock, Paper, Scissors
class Game
    def initiliaze
    end

    def valid_input(input="")
      options = ["scissors", "paper", "rock"]
      options.include? input.downcase
    end

    def get_comp_select
        selection = rand(3)
        selection
    end

    def get_player_select(input)
      if input.downcase == "scissors"
          value = 0
      elsif input.downcase == "paper"
          value = 1
      elsif input.downcase == "rock"
          value = 2
      end
      value
    end

    def play
      puts "Please choose between Rock, Paper, or Scissors"
      input = gets.chomp
      if valid_input(input)
        comp_select = get_comp_select
        player_select = get_player_select(input)
        action, msg = "", ""
        if comp_select + player_select == 1
            action = "Scissors cut Paper!"
        elsif comp_select + player_select == 2
            action = "Rock crushes Scissors!"
        elsif comp_select + player_select == 3
            action = "Paper covers Rock!"
        end
        if player_select - comp_select == -1 or player_select - comp_select == 2
            msg = "Player Wins"
        elsif comp_select == player_select
            msg = "It's a tie"
        else
            msg = "The Computer Wins"
        end
        comp_str = ["scissors", "paper", "rock"][comp_select]
        player_str = ["scissors", "paper", "rock"][player_select]
        puts "Player chooses #{player_str}, the Computer chooses #{comp_str}"
        puts action
        puts msg
        puts
      else
        puts "Please choose between Rock, Paper, or Scissors"
      end
    end
end

test = Game.new
test.play
