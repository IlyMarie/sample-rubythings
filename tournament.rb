class Team

  attr_accessor(:name, :ranking)

  def initialize(name, ranking)
    @name = name
    @ranking = ranking
  end
end


# Make a place to save all the teams in the tournament
@teams = []

def menu
  puts "Welcome to my Tournament Generator, Enter a Selection:"
  puts "1. Enter teams"
  puts "2. List teams"
  puts "3. List matchups"
  puts "4. Exit program"

  choice = gets.chomp.to_i

case choice

when 1
  clear_screen
  enter_teams
when 2
  clear_screen
  list_teams
when 3
  clear_screen
  matchups
when 4
  clear_screen
  puts "Ok, catch ya later, alligator."
else
  clear_screen
  puts "Not a valid choice, try again!"
  menu
  end

end

  def clear_screen
      Gem.win_platform? ? (system "cls") : (system "clear")
end

def return_to_menu
  puts "Return to menu? [y/n]"
  choice = gets.chomp.downcase

  case choice
  when "y"
    clear_screen
    menu
  when "n"
    clear_screen
    puts "Okay, see you around!"
  else
    clear_screen
    puts "Huh, what chu mean? Yes or no?"
    return_to_menu
  end
end

def enter_teams
  puts "Enter team names and rankings. Type done when you're done instead of a teammate."

  name = ''

  while name == 'done'
    print "School name: "
    name = gets.chomp

      if name.downcase == 'done'
        break
          end
  end

  print "Ranking: "
  ranking = gets.chomp.to_i

  while rank_check(ranking)

    puts "There's already a team with that ranking."
    print "Please check your facts and re-enter ranking:"
    ranking = gets.chomp.to_i
  end



    @teams.push(Team.new(name, ranking))



  # sort the teams after they're all in
  @teams.sort! do |team_a, team_b|
    team_a.ranking <=> team_b.ranking
  end

  return_to_menu

end

def rank_check(number)
  ranking_exists = false

  @teams.each do |team|
    if number == team.ranking
      ranking_exists = true
    end
      end

  ranking_exists

end

def list_teams
  puts "Here are the teams..."
  sleep(1)
  puts "---------------------"

  @teams.each do |team|
      puts "#{team.ranking}. #{team.name}"

  end

  return_to_menu

end

def matchups
  temp_array = []

  @teams.each do |team|
    temp_array << team
  end

  if temp_array.length % 2 != 0
      puts "(1) #{temp_array.delete_at(0).name} has a bye"
  end

  while temp_array.length > 0
    team1 = team_array.delete_at(0)
    team2 = temp_array.pop

    puts "(#{team1.ranking}) #{team1.name} versus #{team2.ranking} #{team.name}"
  end
 return_to_menu
end

menu









