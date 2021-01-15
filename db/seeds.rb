# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

# Tenants
10.times do
  Tenant.create(name: FFaker::Company.name)
end

# Users
users = []
20.times do
  users << User.create(name: FFaker::Name.name)
end

# Questions and Answers
20.times do
  question = Question.create(title: FFaker::HipsterIpsum.sentence.gsub(/\.$/, "?"),
    private: FFaker::Boolean.random, user: users.sample)
  (1 + rand(3)).times do
    question.answers.create(body: FFaker::HipsterIpsum.sentence, user: users.sample)
  end
end