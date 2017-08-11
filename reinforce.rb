alltrains = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

dir_111 = alltrains[7][:direction]
freq_80b = alltrains[5][:frequency_in_minutes]
dir_610 = alltrains[2][:direction]



def filtertrain(param_name, param_value, alltrains)
  arr = []

  alltrains.each do |each_train|
    if each_train[:"#{param_name}"] == param_value
      arr << each_train[:train]
    end
  end
  puts "Trains with #{param_name} of #{param_value}: #{arr.join(", ")}"
end

filtertrain("direction","north",alltrains)
filtertrain("direction","east",alltrains)

alltrains[3][:first_departure_time] = "3"
puts alltrains
