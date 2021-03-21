require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash.dig(:summer,:fourth_of_july,(1))
end
############################## WORKS #############
def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end
############################## WORKS #############
def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end
############################## WORKS #############
def all_holidays_with_bbq(holiday_hash)
  bbq_arr = []
holiday_hash.each do |season, season_info|
  season_info.each do |holiday, supplies|
    supplies.each do |item|
       if item == "BBQ"
        bbq_arr << holiday
       end
    end
  end
end
bbq_arr
end
############################## WORKS #############
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash.each do |holiday_hash, holiday| if holiday_hash.to_s == season
  holiday[holiday_name] = supply_array
end
 end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.fetch_values(:winter, value){|k|k}

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.output.each do |key, value|
holiday_hash.fetch_values (holiday_hash)
end
