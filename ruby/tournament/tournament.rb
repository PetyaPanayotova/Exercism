class Tournament
  attr_reader :teams

  def self.tally(input)
    new.tally(input)
  end

  def initialize
    @teams = Hash.new
  end

  def tally(input)
    result = "Team                           | MP |  W |  D |  L |  P\n"
    input_parse(input)
    unless teams.empty?
      teams.values.sort_by { |team| [-team.points, team.name] }
      .each do |team|
        result += "#{team.name.ljust(30)} | #{team.matches_played.to_s.rjust(2)} | #{team.wins.to_s.rjust(2)} | #{team.draws.to_s.rjust(2)} | #{team.losses.to_s.rjust(2)} | #{team.points.to_s.rjust(2)}\n"
      end
    end
    result
  end

  private

  def input_parse(input)
    input.each_line do |line|
      match(*line.split(";")) unless line.strip.empty?
    end
  end

  def match(first_name, second_name, result)
    first_team = get_team(first_name)
    second_team = get_team(second_name)
    case result.strip
    when "win"
      first_team.wins += 1
      second_team.losses += 1
    when "loss"
      first_team.losses += 1
      second_team.wins += 1
    when "draw"
      first_team.draws += 1
      second_team.draws += 1
    end
  end

  def get_team(name)
    @teams[name] = Team.new(name) unless @teams.key?(name)
    @teams[name]
  end
end

class Team
  attr_accessor :name, :wins, :losses, :draws

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def matches_played
    wins + losses + draws
  end

  def points
    wins * 3 + draws * 1
  end
end
