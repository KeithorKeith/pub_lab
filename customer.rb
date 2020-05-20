class Customer

  attr_reader :name, :wallet

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
    end
end
