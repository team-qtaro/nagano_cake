# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'admin1@naganocake.com',
  password: 'admin1',
)

Customer.create!(
	email: 'customer1@naganocake.com',
	password: 'customer1',
	last_name: '長野',
	first_name: '景子',
	last_name_kana: 'ナガノ',
	first_name_kana: 'ケイコ',
	postal_code: '1234567',
	address: '東京都渋谷区宇田川町21-6',
  telephone_number: '09012345678',
)
