class Raindrops

RAINDROPS = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(int)
    has_reminder = [3, 5, 7].select { |i| int % i == 0 }
    has_reminder.empty? ? int.to_s : has_reminder.map {|i| RAINDROPS[i] }.join
  end

end

module BookKeeping
  VERSION = 3
end
