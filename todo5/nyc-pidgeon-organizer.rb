########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeon_list = {} 

# takes the name from the gener & adds them to the pigeon hash 
# sets the gender value for the pigeon as well in the gender hash

pigeon_data[:gender].each do |gender, array|
  array.each do |name|
      pigeon_list[name] = {}
      pigeon_list[name][:gender] = gender.to_s
  end
end

# sets the lives value for the pigeon
pigeon_data[:lives].each do |live, array|
  array.each do |name|
      pigeon_list[name][:lives] = live
  end
end

# creates a hash with an empty array for color 
pigeon_list.each do |name, hash|
  hash[:color]= []
end

# adds the colors to the array for :color 
  pigeon_data[:color].each do |color, array|
    if array.include? name
      hash[:color] << color.to_s
    end
  end
end
