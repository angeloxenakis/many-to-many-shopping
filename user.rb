class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    # Returns a list of purchases associated with a user
    def purchases
        # Our .select method on the line below does all the work of the 6 lines with the .each method
        # But remember that either way works just fine
        Purchase.all.select { |purchase| purchase.user == self }

        # purchases = []
        # Purchase.all.each do |purchase|
        #     if purchase.user == self
        #         purchases << purchase
        #     end
        # end
    end

    # Returns a list of items that the user has purchased
    def items
        self.purchases.map { |purchase| purchase.item }

        # items = []
        # purchases.each do |purchase|
        #     items << purchase.item
        # end
        # items
    end

    def self.all
        @@all
    end
end