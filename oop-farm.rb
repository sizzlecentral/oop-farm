# OOP Farm
# --------

class Farm

  require_relative 'oop-farm-products'

  def initialize(name)
    @name = name
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts 'Options:'
    puts '1 - field'
    puts '2 - harvest'
    puts '3 - status'
    puts '4 - relax'
    puts '5 - exit'
    puts 'Please enter a number'
  end

  def call_option(user_selected)
    case user_selected
      when 1 then field
      when 2 then harvest
      when 3 then status
      when 4 then relax
      when 5 then exit_program
    end
  end

    def field
      puts 'What kind of field is it: corn, or wheat?'
      type = gets.chomp
      puts 'How large is the field in hectares?'
      field_size = gets.chomp
      Field.field(type, field_size)
      puts
    end

    def harvest
      Field.harvest_food
      puts
    end

    def status
      Field.status
      puts
    end

    def relax
      description = [
      "Smell you the smell of the corn on the stalk?  Smell you the wheat where the bees were lately buzzing?",
      "I loafe and invite my soul, I lean and loafe at my ease observing a spear of summer grass.",
      "I breathe the fragrance myself and know it and like it, The distillation would intoxicate me also, but I shall not let it."
      ]
      puts description.sample
    end

    def exit_program
      puts "Exiting..."
      exit
    end

end

# ----- End of Farm class ----- #
