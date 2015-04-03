# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EqDatum.create(:name => '水上観測機', :score => 6,:rate => 2)
EqDatum.create(:name => 'Arl196改', :score => 5,:rate => 2)
EqDatum.create(:name => '夜偵', :score => 3,:rate => 2)
EqDatum.create(:name => '探照灯', :score => 2,:rate => 0.91)
EqDatum.create(:name => '13号電探改', :score => 4,:rate => 1)
EqDatum.create(:name => '33号対水上電探', :score => 7,:rate => 1)
EqDatum.create(:name => '22号水上電探改四', :score => 5,:rate => 1)
EqDatum.create(:name => '32号水上電探', :score => 10,:rate => 0.99)
EqDatum.create(:name => '14号対空電探', :score => 5,:rate => 0.99)