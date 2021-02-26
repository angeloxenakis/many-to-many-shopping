class Item
    attr_accessor :name, :price

    @@all = []

    def initialize(name, price)
        @name = name
        @price = price

        @@all << self
    end


    def purchases
        # Our .select method on the line below does all the work of the 6 lines with the .each method
        # But remember that either way works just fine
        Purchase.all.select { |purchase| purchase.item == self }

        # purchases = []
        # Purchase.all.each do |purchase|
        #     if purchase.item == self
        #         purchases << purchase
        #     end
        # end
    end

    def users
        self.purchases.map { |purchase| purchase.user }

        # users = []
        # purchases.each do |purchase|
        #     items << purchase.user
        # end
        # users
    end

    def self.all
        @@all
    end

end