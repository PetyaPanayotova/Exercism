class TwelveDays
  DAYS = %w[zero first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth]

  GIFTS = [
    "a Partridge in a Pear Tree.",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"
  ]

  class << self
    def song
      1.upto(12).map { |n| verse(n)}.join("\n")
    end

    def verse(number)
      "On the #{DAYS[number]} day of Christmas my true love gave to me: #{gifts(number)}\n"
    end

    def gifts(day)
      list = GIFTS[0..day-1]
      to_series(list)
    end

    def to_series(elements)
      if elements.size == 1
        "#{GIFTS[0]}"
      else
        "#{GIFTS[1, elements.size - 1].reverse.join(', ')}, and #{GIFTS[0]}"
      end
    end
  end
end
