require 'pry'

require_relative "./item.rb"
require_relative "./user.rb"
require_relative "./purchase.rb"

i1 = Item.new("dope shirt", 25)
i2 = Item.new("sick pants", 55)
i3 = Item.new("very rare jordans", 300)

u1 = User.new("David")
u2 = User.new("Cori")
u3 = User.new("Nestor")

Purchase.new(i1, u1)
Purchase.new(i3, u1)
Purchase.new(i2, u2)
Purchase.new(i1, u3)


binding.pry
0