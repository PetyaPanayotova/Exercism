class Brackets
  OPENERS = ["(", "[", "{"]
  CLOSERS = [")", "]", "}"]
  BRACKETS_MATCH = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  def self.paired?(string)
    stack = []
    string.split("").each do |char|
      if OPENERS.include?(char)
        stack.push(char)
      elsif CLOSERS.include?(char)
        if BRACKETS_MATCH[stack.last] == char
          stack.pop
        else
          return false
        end
      else
        next
      end
    end
    stack.size == 0
  end
end
