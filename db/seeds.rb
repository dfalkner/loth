# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



DayOfWeek.delete_all

[ {code: 'sun', title:  'Sunday'}, 
  {code: 'mon', title:  'Monday'}, 
  {code: 'tue', title:  'Tuesday'},
  {code: 'wed', title:  'Wednesday'}, 
  {code: 'thu', title:  'Thursday'}, 
  {code: 'fri', title:  'Friday'}, 
  {code: 'sat', title:  'Saturday'},
  {code: 'any', title:  'Any'}
].each {|i| DayOfWeek.create(i)}


Rank.delete_all

[ {code: 'sol', title:  'Solemnity'}, 
  {code: 'fst', title:  'Feast'}, 
  {code: 'mem', title:  'Memorial'},
  {code: 'opt', title:  'Optional Memorial'}, 
  {code: 'comm', title:  'Commemoration'}, 
  {code: 'sun', title:  'Sunday'}, 
  {code: 'week', title:  'Weekday'}, 
  {code: 'spec', title:  'Special'}, 
  {code: 'na', title:  'N/A'} 
].each {|i| Rank.find_or_create_by_code(i)}

PrayerType.delete_all

[ {code: "ep1", title: 'Evening Prayer I'},
  {code: "np1", title: 'Night Prayer I'},
  {code: "ip", title: 'Invitatory'},
  {code: "or", title: 'Office of Readings'},
  {code: "mp", title: 'Morning Prayer'},
  {code: "dp1", title: 'Midmorning Prayer'},
  {code: "dp2", title: 'Midday Prayer'},
  {code: "dp3", title: 'Midafternoon Prayer'},
  {code: "ep2", title: 'Evening Prayer'},
  {code: "np2", title: 'Night Prayer'}
].each do |i|
  PrayerType.find_or_create_by_code(i)
end

Season.delete_all

[ {code: 'ord', title: "Ordinary Time"},
  {code: 'adv', title: "Advent"},
  {code: 'xmas', title: "Christmas"},
  {code: 'lent', title: "Lent"},
  {code: 'easter', title: "Easter"}, 
  {code: 'any', title: "Any"},
  {code: 'na', title: "Not Applicable"}
].each do |i|
  Season.find_or_create_by_code(i)
end

StorageBin.delete_all

[ {name: 'ip', purpose:  'Invitatory Psalm file storage location'}, 
  {name: 'or', purpose:  'Office of Reading file storage location'},
  {name: 'mp', purpose:  'Morning Prayer file storage location'}, 
  {name: 'dp', purpose:  'Day Prayer file storage location'}, 
  {name: 'ep', purpose:  'Evening Prayer file storage location'}, 
  {name: 'np', purpose:  'Night Prayer file storage location'}, 
  {name: 'common', purpose:  'Common parts to all file storage location'}, 
  {name: 'hymns', purpose:  'Hymn file storage location'}, 
  {name: 'psalms', purpose:  'Psalm file storage location'}, 
  {name: 'concluding_prayers', purpose:  'Concluding Prayer file storage location'}, 
  {name: 'staging', purpose:  'Staging and temporary file storage location'}
].each {|i| StorageBin.find_or_create_by_name(i)}

admin = User.create!(name:     "Dane Falkner",
                     email:    "dfalkner@divineoffice.org",
                     password: "password",
                     password_confirmation: "password"
                     )                              
admin.toggle!(:admin)
admin.toggle!(:editor)
