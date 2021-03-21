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
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash.each do |season, holiday_name| season end
    #holiday_name.each do |holiday_name, supply_array|
 #key: hash = { } hash[:a] = 'a' hash[:a] # => 'a'.
#holiday_hash.each_key { |season, holiday_name| season = [[key =>|, value]* ] }
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.fetch([:winter][:christmas])
  holiday_hash.fetch([:winter][:new_years])
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.output.each do |key, value|
holiday_hash.each do |key, value|
#puts "#{key}:#{value}"end
puts key + ' : ' + value end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
