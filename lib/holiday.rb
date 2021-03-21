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

def all_winter_holiday_supplies(holiday_hash)
  supply_arr = []
  holiday_hash[:winter].each do |k, v|
    supply_arr << v
  end
  supply_arr.flatten
end
############################## WORKS #############
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
     holiday_hash.each do |holliday_season, holliday|
    if holliday_season.to_s == season
      holliday[holiday_name] = supply_array
     end
  end
end


 def all_supplies_in_holidays(holiday_hash)
   holiday_supplies.each do |season, holiday_hash|
     puts season

     holiday_hash.each do |holiday, supply_list|
       puts "  #{holiday}"

       supply_list.each do |supply|
         puts "    #{supply}"
       end
     end
 end
