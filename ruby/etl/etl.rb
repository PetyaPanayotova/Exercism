class ETL
  def self.transform(old)
    new = old.each_with_object(Hash.new) { |(k, v), hash| v.each { |letter| hash[letter.downcase] = k} }
    new = Hash[new.sort]
  end
end
