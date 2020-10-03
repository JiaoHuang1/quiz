# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
Answer.destroy_all

q1 = Question.create!(questionTitle: 'What day is today?')
q2 = Question.create!(questionTitle: 'What is your name?')
q3 = Question.create!(questionTitle: 'How are you today?')
q4 = Question.create!(questionTitle: 'What is the weather today?')
q5 = Question.create!(questionTitle: 'What is your location?')