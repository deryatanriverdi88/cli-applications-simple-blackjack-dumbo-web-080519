def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1...11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def invalid_command
   puts "Please enter a valid command"
end


def hit?(current_total)
  prompt_user
  input = get_user_input
 if input == "s"
   return current_total
   elsif input == "h"
   return current_total += deal_card
 else
   invalid_command
   prompt_user
 end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
