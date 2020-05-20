class Pub

    attr_reader :name, :till

    def initialize(name, drinks = [])
        @name = name
        @till = 0
        @drinks = drinks
    end
    
    def sell_drink(drink)
      @till += drink.price 
    end
end