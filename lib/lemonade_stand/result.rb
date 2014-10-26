module LemonadeStand

  class Result

    attr_reader :glasses_sold

    def initialize data
      @glasses_sold = data[:glasses_sold]
      @choice       = data[:choice]
      @day          = data[:day]
    end

    def expenses
      glasses_cost = @choice.glasses_made * @day.cost_per_glass
      signs_cost   = 15 * @choice.signs
      ((glasses_cost + signs_cost) / 100.0).round 2
    end

  end

end
