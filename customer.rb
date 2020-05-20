class Customer

  attr_reader :name, :wallet, :age

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
        @drinks = []
        @drunkennes = 0
    end

    def buy_drink(drink)
      @wallet -= drink.price  
    end
end
