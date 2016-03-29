# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "faker"

20.times do
    Item.create!(
        
        description: Faker::Beer.style,
        completion_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
        user_id: 1
        
        )
end
