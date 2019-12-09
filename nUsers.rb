puts "How many users?"
@users = gets.chomp

@players = []

i = 1

while @users.to_i >= i
  temp_user = {}
  puts "What is Player #{i}'s name?"
  user_name = gets.chomp
  temp_user[:id] = i
  temp_user[:name] = user_name
  @players.push(temp_user)
  i = i + 1
end