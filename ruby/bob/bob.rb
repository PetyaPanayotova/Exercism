class Bob
  def self.hey(remark)
    if remark == remark.upcase && remark.match(/[A-Za-z]/)
      "Whoa, chill out!"
    elsif remark.delete(" ")[-1] == "?"
      "Sure."
    elsif remark.match(/\b[A-Za-z][a-z]+\b|\d/)
      "Whatever."
    else
      "Fine. Be that way!"
    end
  end
end

module BookKeeping
  VERSION = 1 
end
