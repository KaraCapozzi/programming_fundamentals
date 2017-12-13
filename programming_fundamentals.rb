array = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

train_111_direction = array[7][:direction]
train_80B_frequency = array[5][:frequency_in_minutes]
train_610_direction = array[2][:direction]


trains_north = []
array.each do |train|
  if train[:direction] == "north"
    then trains_north << train
  end
end

puts trains_north

trains_east = []
array.each do |train|
  if train[:direction] == "east"
    then trains_north << train
  end
end

puts trains_east


def train_directions(direction, list)
  trains = []
  list.each do |train|
    if train[:direction] == direction
    trains << train
    end
  end
  trains
end

puts train_directions("north", array)
puts train_directions("east", array)

# Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
