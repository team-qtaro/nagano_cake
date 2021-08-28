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
Customer.create!(
	email: 'customer2@naganocake.com',
	password: 'customer2',
	last_name: '永野',
	first_name: '圭介',
	last_name_kana: 'ナガノ',
	first_name_kana: 'ケイスケ',
	postal_code: '7654321',
	address: '東京都新宿区新宿4-1-9',
  telephone_number: '08012345678',
)

Genre.create!(
	genre_name: 'ケーキ',
)
Genre.create!(
	genre_name: 'プリン',
)
Genre.create!(
	genre_name: '焼き菓子',
)

Item.create!(
  genre_id: '1',
	name: 'ニューヨークチーズケーキ',
	description: '数種のチーズの特性を活かしてブレンドし焼き上げたニューヨークチーズケーキ',
	price: '420',
	is_stopped: 'false',
	image: File.open('./app/assets/images/cake1.jpg')
	)

Item.create!(
  genre_id: '1',
	name: '焼き栗モンブラン',
	description: 'なめらかな生クリームに濃厚な焼き栗ペーストをたっぷり使用した栗の風味を味わうモンブラン',
	price: '500',
	is_stopped: 'false',
	image: File.open('./app/assets/images/cake2.jpg')
)
Item.create!(
  genre_id: '2',
	name: 'プリンアラモード',
	description: 'ラズベリーやオレンジ、メロンなどの色鮮やかなフルーツと共に、バニラ香るプリンが楽しめる',
	price: '250',
	is_stopped: 'false',
	image: File.open('./app/assets/images/pudding1.jpg')
)
Item.create!(
  genre_id: '2',
	name: '抹茶プリン',
	description: '北海道産生クリームでまろやかに仕上げているので、苦味が優しく、お子様でも美味しく召し上がって頂けます',
	price: '330',
	is_stopped: 'false',
	image: File.open('./app/assets/images/pudding2.jpg')
)
Item.create!(
  genre_id: '3',
	name: 'マカロン',
	description: '素材の味を活かしたジャムやコンポート、果実のピューレを使用したクリームをサンドしています',
	price: '270',
	is_stopped: 'false',
	image: File.open('./app/assets/images/baked1.jpg')
)
Item.create!(
  genre_id: '3',
	name: 'マドレーヌ',
	description: 'バターとバニラの風味豊かなしっとり食感のマドレーヌ',
	price: '180',
	is_stopped: 'false',
	image: File.open('./app/assets/images/baked2.jpg')
)

