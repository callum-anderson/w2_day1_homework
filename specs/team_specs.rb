require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')
class TeamTest < MiniTest::Test


  def test_get_team_name
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal("Team1", team.get_team_name)
  end

  def test_get_team_players
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal(["Filip", "Ben"], team.get_team_players)
  end

  def test_get_team_players
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal(["Filip", "Ben"], team.get_team_players)
  end
  def test_get_team_coach
    team = Team.new("Team1", ["Filip", "Ben"], "Craig")
    assert_equal("Craig", team.get_team_coach)
  end


end
