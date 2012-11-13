# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!(name:     "Dane Falkner",
                     email:    "dfalkner@divineoffice.org",
                     password: "password",
                     password_confirmation: "password"
                     )                              
admin.toggle!(:admin)
admin.toggle!(:editor)

DayOfWeek.delete_all

[ {name: 'sun', title:  'Sunday'}, 
  {name: 'mon', title:  'Monday'}, 
  {name: 'tue', title:  'Tuesday'},
  {name: 'wed', title:  'Wednesday'}, 
  {name: 'thu', title:  'Thursday'}, 
  {name: 'fri', title:  'Friday'}, 
  {name: 'sat', title:  'Saturday'}
].each {|i| DayOfWeek.create(i)}


Rank.delete_all

[ {name: 'solemnity', title:  'Solemnity'}, 
  {name: 'feast', title:  'Feast'}, 
  {name: 'memorial', title:  'Memorial'},
  {name: 'opt-mem', title:  'Optional Memorial'}, 
  {name: 'comm', title:  'Commemoration'}, 
  {name: 'sunday', title:  'Sunday'}, 
  {name: 'weekday', title:  'Weekday'}, 
  {name: 'special', title:  'Special'}, 
  {name: 'na', title:  'N/A'} 
].each {|i| Rank.create(i)}

PrayerType.delete_all

[ {name: "ep1", title: 'Evening Prayer I'},
  {name: "np1", title: 'Night Prayer I'},
  {name: "ip", title: 'Invitatory'},
  {name: "or", title: 'Office of Readings'},
  {name: "mp", title: 'Morning Prayer'},
  {name: "dp1", title: 'Midmorning Prayer'},
  {name: "dp2", title: 'Midday Prayer'},
  {name: "dp3", title: 'Midafternoon Prayer'},
  {name: "ep2", title: 'Evening Prayer'},
  {name: "np2", title: 'Night Prayer'}
].each do |i|
  PrayerType.find_or_create_by_name(i)
end

Season.delete_all

[ {name: 'ord', title: "Ordinary Time"},
  {name: 'adv', title: "Advent"},
  {name: 'xmas', title: "Christmas"},
  {name: 'lent', title: "Lent"},
  {name: 'easter', title: "Easter"}, 
  {name: 'any', title: "Any"}
].each do |i|
  Season.find_or_create_by_name(i)
end

