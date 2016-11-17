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

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

# Patient.create([
#                  { name: 'Jeff Horn',
#                    sickness: 'Too cool for school' },
#                  { name: 'Chris Payne',
#                    sickness: 'Way to excited' },
#                  { name: 'Brian Berzellini',
#                    sickness: 'Spooky Ghost' },
#                  { name: 'Antony Donovan',
#                    sickness: 'Robot Syndrome' },
#                  { name: 'Jason Weeks',
#                    sickness: 'Oddly large chest' }
#                ])

Doctor.create([
                { given_name: 'Ben',
                  family_name: 'Adamski',
                  specialty: 'VapeKing' },
                { given_name: 'Rachel',
                  family_name: 'Stevens',
                  specialty: 'Horse Enthusiast' },
                { given_name: 'Julie',
                  family_name: 'Carroll',
                  specialty: 'Getting everyone jobs' },
                { given_name: 'Lu',
                  family_name: 'Nathan',
                  specialty: 'iPhone guru' },
                { given_name: 'Naida',
                  family_name: 'the Pollster',
                  specialty: 'Keeping us all caffinated' }
              ])

Patient.create([
                 { name: 'Jeff Horn',
                   sickness: 'Too cool for school',
                   doctor_id: 2 },
                 { name: 'Chris Payne',
                   sickness: 'Way to excited',
                   doctor_id: 2 },
                 { name: 'Brian Berzellini',
                   sickness: 'Spooky Ghost' },
                 { name: 'Antony Donovan',
                   sickness: 'Robot Syndrome',
                   doctor_id: 1 },
                 { name: 'Jason Weeks',
                   sickness: 'Oddly large chest',
                   doctor_id: 4 }
               ])
