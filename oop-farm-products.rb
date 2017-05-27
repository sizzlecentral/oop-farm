# OOP Farm Products
# -----------------

class Field

  attr_accessor :field_size, :food_per_hectare
  @@total_food = []

  def initialize(field_size)
    @field_size = field_size
  end

  def self.all
    food = []
    @@total_food.map do |field|
      food_per_field = (field.field_size.to_i * field.food_per_hectare)
      food << food_per_field
    end
    food.sum
  end

  def self.create(field_size)
    field = self.new(field_size)
    @@total_food << field
  end

  def self.field(type, field_size)
    if type == 'corn'
      Corn.create(field_size)
    elsif type == 'wheat'
      Wheat.create(field_size)
    else puts 'Please try again.'
    end
    puts "Added a #{type} field of #{field_size} hectares!"
  end

  def self.harvest_food
    @@total_food.each do |field|
      puts "Harvesting #{field.field_size.to_i * field.food_per_hectare} food from #{field.field_size.to_i} hectare #{field.class} field."
    end
    puts "The farm has harvested #{self.all} food so far."
  end

  def self.status
    @@total_food.each do |field|
      puts "#{field.class} field is #{field.field_size.to_i} hectares."
    end
    puts "The farm has harvested #{self.all} food so far."
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
