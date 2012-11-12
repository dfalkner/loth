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

[ {label: 'sun', description:  'Sunday'}, 
  {label: 'mon', description:  'Monday'}, 
  {label: 'tue', description:  'Tuesday'},
  {label: 'wed', description:  'Wednesday'}, 
  {label: 'thu', description:  'Thursday'}, 
  {label: 'fri', description:  'Friday'}, 
  {label: 'sat', description:  'Saturday'}
].each {|i| DayOfWeek.create(i)}


Rank.delete_all

[ {label: 'sol', description:  'Solemnity'}, 
  {label: 'feast', description:  'Feast'}, 
  {label: 'mem', description:  'Memorial'},
  {label: 'opt-mem', description:  'Optional Memorial'}, 
  {label: 'comm', description:  'Commemoration'}, 
  {label: 'sun', description:  'Sunday'}, 
  {label: 'day', description:  'Weekday'}, 
  {label: 'na', description:  'N/A'} 
].each {|i| Rank.create(i)}

PrayerType.delete_all

[ {label: "ep1", description: 'Evening Prayer I'},
  {label: "np1", description: 'Night Prayer I'},
  {label: "ip", description: 'Invitatory'},
  {label: "or", description: 'Office of Readings'},
  {label: "mp", description: 'Morning Prayer'},
  {label: "dp1", description: 'Midmorning Prayer'},
  {label: "dp2", description: 'Midday Prayer'},
  {label: "dp3", description: 'Midafternoon Prayer'},
  {label: "ep2", description: 'Evening Prayer'},
  {label: "np2", description: 'Night Prayer'}
].each do |i|
  PrayerType.find_or_create_by_label(i)
end

Season.delete_all

[ {label: 'ord', description: "Ordinary Time"},
  {label: 'adv', description: "Advent"},
  {label: 'xmas', description: "Christmas"},
  {label: 'lent', description: "Lent"},
  {label: 'easter', description: "Easter"}, 
  {label: 'all', description: "All"}
].each do |i|
  Season.find_or_create_by_label(i)
end

IngredientType.delete_all

[ {label: 'intro', description:  'Introduction'}, 
  {label: 'invite', description:  'Invitation'}, 
  {label: 'hymn', description:  'Hymn'},
  {label: 'ant1_front', description:  'Ant 1'}, 
  {label: 'ant1_end', description:  'Ant'}, 
  {label: 'ant2_front', description:  'Ant 2'}, 
  {label: 'ant2_end', description:  'Ant'},
  {label: 'ant3_front', description:  'Ant 3'}, 
  {label: 'ant3_end', description:  'Ant'},
  {label: 'psalm', description:  'Psalm'}, 
  {label: 'psalm_prayer', description:  'Psalm Prayer'},
  {label: 'versicle', description: 'Verse'},
  {label: 'reading1', description: 'First Reading'},
  {label: 'reading1_response', description: 'Response'},
  {label: 'reading2', description: 'Second Reading'},  
  {label: 'reading2_response', description: 'Response'},
  {label: 'reading3', description: 'Third Reading'},
  {label: 'reading3_response', description: 'Response'},
  {label: 'reading4', description: 'Forth Reading'},
  {label: 'reading4_response', description: 'Response'},
  {label: 'ant_cant', description: 'Gospel Canticle Antiphon'},
  {label: 'gospel_canticle', description: 'Gospel Canticle'},
  {label: 'intercessions', description: 'Intercessions'},
  {label: 'te_deum', description: 'Te Deum'},
  {label: 'our_father', description: 'Our Father ...'},
  {label: 'concluding_prayer', description: 'Concluding Prayer'},
  {label: 'dismissal', description: 'Dismissal'},
  {label: 'outro', description:  'Outro'}
].each {|i| IngredientType.create(i)}