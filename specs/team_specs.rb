require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')
class TeamTest < MiniTest::Test


  def test_get_team_name
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
      assert_equal("Team1", team.team_name)
    # assert_equal("Team1", team.get_team_name)
  end



  def test_get_team_players
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal(["Filip", "Ben"], team.players)
    # assert_equal(["Filip", "Ben"], team.get_team_players)
  end
  def test_get_team_coach
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal("Craig", team.coach)
    # assert_equal("Craig", team.get_team_coach)
  end
  def test_change_coach
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    team.coach = ("Jose")
    assert_equal("Jose", team.coach)
    # assert_equal("Jose", team.get_team_coach)
  end

  def test_add_new_player
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    team.add_player("Cristiano")
    assert_equal(["Filip", "Ben", "Cristiano"], team.players)
  end

  def test_find_player_by_name
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    has_player = team.find_player_by_name("Filip")
    assert_equal(true, has_player)
  end
  def test_win
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    initial_points = team.points
    team.win?(true)
    assert_equal(initial_points + 1, team.points)
  end
end
