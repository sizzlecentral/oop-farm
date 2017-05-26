# OOP Farm Products
# -----------------

class Products

  @@total_food = []

  def initialize
  end

# ----- Class Methods ----- #

  def self.all
    @@total_food
  end

# ----- Instance Methods ----- #

  def field_description
    print description.sample
  end






end

# ----- End of Products class ----- #

description = [
"Smell you the smell of the corn on the stalk?
Smell you the wheat where the bees were lately buzzing?",
"I loafe and invite my soul, I lean and loafe at my ease
observing a spear of summer grass.",
"I breathe the fragrance myself and know it and like it,
The distillation would intoxicate me also, but I shall
not let it."
]
