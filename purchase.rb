class Purchase
    attr_accessor :item, :user 
    @@all = []

    def initialize item, user 
        @item = item
        @user = user

        @@all << self
    end

    # The method below was not 
    def self.most_expensive
        # The line below does the same thing as...
        Purchase.all.max_by { |purchase| purchase.item.price }

        # ...the six lines blow here
        # expensive_purchase = Purchase.all[0]
        # Purchase.all.each do |purchase|
        #     if purchase.item.price > expensive_purchase.item.price
        #         expensive_purchase = purchase
        #     end
        # end
    end

    def self.all
        @@all
    end

end