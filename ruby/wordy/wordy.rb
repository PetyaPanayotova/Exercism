class WordProblem

  OPERATIONS_SUBSTITUTION = {
    "plus" => "+",
    "minus" => "-",
    "multiplied" => "*",
    "divided" => "/"
  }

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def answer
    raise ArgumentError unless math_expression.size >= 3
    evaluate(math_expression)
  end

  def math_expression
    text.chomp("?").split(" ")
    .map { |element| element =~ /[0-9]/ ? element : OPERATIONS_SUBSTITUTION[element] }
    .compact
  end

  def evaluate(expression)
    return expression.first if expression.length == 1
    evaluate(expression.drop(3).unshift(eval(expression.take(3).join)))
  end
end
