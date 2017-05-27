# OOP Farm
# --------

class Farm

  require_relative 'oop-farm-products'
  @@total_food = []

# ----- Class Methods ----- #

  def self.all
    food = []
    @@total_food.each do |field|
      food_per_field = field.field_size * field.food_per_hectare
      food << food_per_field
    end
    food.sum
  end

# ----- Instance Methods ----- #

  def main_menu
    while true
      print_main_menu
      user_selected = gets
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts 'Options:'
    puts 'field'
    puts 'harvest'
    puts 'status'
    puts 'relax'
    puts 'exit'
    puts
  end

  def call_option(user_selected)
    case user_selected
      when 'field'    then field
      when 'harvest'  then harvest
      when 'status'   then status
      when 'relax'    then relax
      when 'exit'     then exit_program
    end

    def field
      print 'What kind of field is it: corn, or wheat?'
      field_type = gets.chomp
      print 'How large is the field in hectares?'
      field_size = gets.chomp

      if field_type == 'corn'
        corn_field = Corn.new(field_size)
        @@total_food << corn_field
      elsif field_type == 'wheat'
        wheat_field = Wheat.new(field_size)
        @@total_food << wheat_field
      else exit
      end

      print "Added a #{field_type} field of #{field_size} hectares!"
      puts
    end

    def harvest
      @@total_food.each do |field|
        print "Harvesting #{field.field_size * field.food_per_hectare} food from #{field.field_size} hectare #{field.class} field."
      end
      print "The farm has harvested #{Farm.all} food so far."
      puts
    end

    def status
      # Formula for calculating status goes here
      # print "#{field_type} field is #{field_size} hectares."
      print "The farm has harvested #{Farm.all} food so far."
      puts
    end

    def relax
      description = [
      "Smell you the smell of the corn on the stalk?
      Smell you the wheat where the bees were lately buzzing?",
      "I loafe and invite my soul, I lean and loafe at my ease
      observing a spear of summer grass.",
      "I breathe the fragrance myself and know it and like it,
      The distillation would intoxicate me also, but I shall
      not let it."
      ]
      print description.sample
    end

    def exit_program
      print "Exiting..."
      exit
    end

end

# ----- End of Farm class ----- #
