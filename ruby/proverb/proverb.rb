class Proverb
  def initialize(*list, qualifier: nil)
    @list = list
    @qualifier = qualifier
  end

  def to_s
    @list.each_cons(2)
    .map { |slice| "For want of a #{slice.first} the #{slice.last} was lost.\n"}
    .push(("And all for the want of a #{@qualifier} #{@list.first}.").squeeze(' '))
    .join
  end
end
