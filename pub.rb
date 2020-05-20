class Pub

    attr_reader :name, :till

    def initialize(name, drinks = [])
        @name = name
        @till = 0
        @drinks = drinks
    end
    
    def sell_drink(drink, customer)
        if customer.age >= 18
            @till += drink.price
        elsif customer.age < 18
            return "Get out!"
        end 
    end

    def check_age_of_customer(customer)
      return customer.age()
    end
end