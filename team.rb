class Team
  attr_accessor(:players, :coach)
  attr_reader(:team_name)
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

def find_player_by_name(name)
  return @players.include?(name)
end


  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_team_players()
  #   return @players
  # end
  #
  # def get_team_coach()
  #   return @coach
  # end
  #
  # def change_coach(new_coach)
  #   @coach = new_coach
  # end
end
