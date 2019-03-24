class PhoneNumber
  def self.clean(phone_number)
    numbers_only = phone_number.gsub(/[^0-9]/, '')
      numbers_only[0] = '' if numbers_only[0] == "1"
      return nil if numbers_only.size != 10 || !((numbers_only[0] =~ /[^2-9]/).nil?) || !((numbers_only[3] =~ /[^2-9]/).nil?)
      numbers_only
  end
end

module BookKeeping
  VERSION = 2
end
