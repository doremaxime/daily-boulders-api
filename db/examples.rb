# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

# %w(V2 V8 V9 V4).each do |climb|
#   user = User.first
#   next if Climb.exists? grade: climb
#   user.climbs.build(date: '2017-02-10',
#                     grade: climb,
#                     user_id: user)
# end

Climb.create!(date: '2010-01-01', grade: 'V1', user_id: 1)
Climb.create!(date: '2019-09-09', grade: 'V9', user_id: 2)
Climb.create!(date: '2017-02-10', grade: 'V0', user_id: 3)
Climb.create!(date: '2018-08-08', grade: 'V8', user_id: 4)
