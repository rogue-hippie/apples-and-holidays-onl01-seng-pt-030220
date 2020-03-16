require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_hash[:winter].each do |thing, value|
    value << supply
  end
 
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply
 holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  a = []
  holiday_hash[:winter].each do |season, supply|
    a << supply
    a.flatten
  end
a.flatten
end

def all_supplies_in_holidays(holiday_hash)
   
  holiday_hash.each do |season, holiday|
   puts "#{season.capitalize}:"

    holiday.each do |holiday, supplies|
    
    split_holiday_array =  holiday.to_s.split("_")

           split_holiday_array.each do |word|
             word.capitalize!
           end
     
    final_holiday_array = split_holiday_array.join(" ")
      final_supplies_array = supplies.join(", ")


      puts "  #{final_holiday_array}: #{final_supplies_array}"       
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  hol_names_array = []

    holiday_hash.each do |season, holiday|

      holiday.each do |holiday_as_key, supplies|
        if supplies.include?("BBQ")
          hol_names_array << holiday_as_key
        end

      end
    end
  return hol_names_array

end







