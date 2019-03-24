class Clock
  def initialize(hours, minutes)
    @minutes = minutes % 60
    @hours = (hours + minutes / 60) % 24
  end

  def self.at(hours, minutes)
   Clock.new(hours,minutes)
  end

  def +(added_minutes)
    Clock.new((@hours + (@minutes + added_minutes) / 60) % 24, (@minutes + added_minutes) % 60)
  end

  def to_s
    "#{'%02d' % @hours}:#{'%02d' % @minutes}"
  end

  def ==(another_clock)
    self.to_s == another_clock.to_s
  end

end

module BookKeeping
  VERSION = 2
end
