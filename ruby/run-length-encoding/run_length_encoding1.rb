class RunLengthEncoding
  def self.encode(input)
    encoded_string = ''
    occurance = 0
    previous_char = ''

    input.chars.each do |char|

      if previous_char == char
        occurance += 1
      else
        if occurance > 1
          encoded_string += occurance.to_s + previous_char
        else
          encoded_string += previous_char
        end
        previous_char = char
        occurance = 1
      end
    end

    if occurance > 1
      encoded_string += occurance.to_s + previous_char
    else
      encoded_string += previous_char
    end

    encoded_string
  end

  def self.decode(input)
    decoded_string = ''
    occurance = ''

    input.chars.each do |char|

      if char.match(/\d/)
        occurance += char
      else
        if occurance != ''
          decoded_string += char * occurance.to_i
          occurance = ''
        else
          decoded_string += char
        end
      end
    end

    decoded_string
  end
end
