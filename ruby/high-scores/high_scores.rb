class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    if scores.last == scores.max
      "Your latest score was #{personal_best}. That's your personal best!"
    else
      "Your latest score was #{latest}. That's #{personal_best - latest} short of your personal best!"
    end
  end
end
