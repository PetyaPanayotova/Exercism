require 'date'

class Meetup
  attr_reader :start_of_month, :end_of_month, :start_of_teenth_days, :end_of_teenth_days

  POSITIONS = {
    first: 0,
    second: 1,
    third: 2,
    fourth: 3,
    fifth: 4,
    teenth: 0,
    last: -1
  }

  def initialize(month, year)
    @start_of_month = Date.new(year, month)
    @end_of_month = Date.new(year, month, -1)
    @start_of_teenth_days = Date.new(year, month, 13)
    @end_of_teenth_days = Date.new(year, month, 19)
  end

  def day(weekday, position)
    range(position).select { |date| date.send(weekday.to_s + "?") }[POSITIONS[position]]
  end

  private

  def range(position)
    position == :teenth ? (start_of_teenth_days..end_of_teenth_days) : (start_of_month..end_of_month)
  end
end
