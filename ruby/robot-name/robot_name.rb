class Robot

  class << self
    def reset_all_combinations
      @all_combinations = ('AA000'..'ZZ999').to_a.shuffle!
    end

    def generating_name
      name = @all_combinations.pop
    end

    def forget
      reset_all_combinations
    end
  end

  def initialize
    @name = Robot.generating_name
  end

  def name
    @name
  end

  def reset
    @name = Robot.generating_name
  end
end
