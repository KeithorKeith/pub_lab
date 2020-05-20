class Customer

  attr_reader :name, :wallet, :age, :drunk_level

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
        @drinks = []
        @drunk_level = 0
    end

    def buy_drink(drink)
      @wallet -= drink.price
      @drunk_level += drink.units  
    end

    # def alcohol_level(drink)
    #   @drinks << drink
    #   @drunk_level += drink.units
    # end
end
