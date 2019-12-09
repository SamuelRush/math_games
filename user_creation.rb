@continue = true

class User
  attr_accessor :name, :lives

  def initialize(user_name,i)
    @name = user_name
    @id = i
    @lives = 3
  end

  def lose_life
    @lives = @lives - 1
  end
end

def question(user)
    rand_one = rand(1...20)
    rand_two = rand(1...20)
    answer = rand_one + rand_two

    puts "#{user}, what is the answer to #{rand_one} + #{rand_two}?"
    user_answer = gets.chomp

    if user_answer.to_i == answer
      puts "YES! You are correct"
      return true
    elsif
      puts "Seriously? No!"
      return false
    end
end

@my_players = []


@players.each do |player|
  @my_players.push User.new(player[:name],player[:id])
end

while @continue
  newScore = []
  puts "----- NEW TURN -----"
  @my_players.each do |player|
    correct = question(player.name)
    if correct == nil
      player.lose_life
      if player.lives == 0
        @continue = false
        break
      end
    end
    newScore.push(player.name)
    newScore.push(player.lives)
  end
message = ""

  newScore.each_with_index do |component, index|
    if index % 2 == 0
      # puts "#{component} EVEN #{index}"
      message = message + "#{component}: "
    elsif
      # puts "#{component} ODD #{index}"
      message = message + "#{component}/3. "
    end
  end
  puts message
end

if @continue == false
  finalMessage = ""
  @my_players.each do |player|
    if player.lives == 0
      finalMessage = "#{player.name} loses!!!"
    end
  end
  puts finalMessage
  puts "----- GAME OVER -----"
end
