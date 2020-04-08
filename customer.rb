class Customer

    attr_reader(:name, :wallet, :drink_purchased)
    
    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @drink_purchased = 0
    end

    def has_drink(alcohol)
        @drink_purchased += 1
        @wallet -= alcohol
    end

end