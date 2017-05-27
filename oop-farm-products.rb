# OOP Farm Products
# -----------------

class Field

  def initialize(field_size)
    @field_size = field_size
    @food_per_hectare = 0
  end

end

# ----- End of Field class ----- #

class Corn < Field

  def initialize(field_size)
    @field_size = field_size
    @food_per_hectare = 20
  end

end

# ----- End of Corn class ----- #

class Wheat < Field

  def initialize(field_size)
    @field_size = field_size
    @food_per_hectare = 30
  end

end

# ----- End of Wheat class ----- #
