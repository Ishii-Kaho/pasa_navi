# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: 'パーキング太郎',
  nickname: 'PAたろう',
  email: 'sample1@sample',
  password: 'sample1'
)
User.create!(
  name: 'サービス二郎',
  nickname: 'SAじろう',
  email: 'sample2@sample',
  password: 'sample2'
)

require 'csv'

CSV.foreach('db/pasa.csv', headers: true) do |row|
  Pasa.create(
    facility: row['facility'],
    prefecture: row['prefecture'],
    highway_name: row['highway_name']
  )
end
