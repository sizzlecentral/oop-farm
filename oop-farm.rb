# OOP Farm
# --------

class Farm

  require_relative 'oop-farm-products'
  @@total_food = []

# ----- Class Methods ----- #

# ----- Instance Methods ----- #

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts 'Options:'
    puts '[1] Field'
    puts '[2] Harvest'
    puts '[3] Status'
    puts '[4] Relax'
    puts '[5] Exit'
    puts 'Enter a number'
    puts
  end

  def call_option(user_selected)
    case user_selected
      when 1 then field
      when 2 then harvest
      when 3 then status
      when 4 then relax
      when 5 then exit
    end

    def field
      print 'What kind of field is it: corn, or wheat?'
      field_type = gets.chomp
      print 'How large is the field in hectares?'
      field_size = gets.chomp
      # Field create formula goes here
      puts "Added a #{field_type} field of #{field_size} hectares!"
      puts
    end




end

# ----- End of Farm class ----- #

corn = Product.new("Corn", 20)
wheat = Product.new("Wheat", 30)
