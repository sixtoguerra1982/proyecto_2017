# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Menu.destroy_all
Cook.destroy_all

User.create(
  name: 'usuario 01',
  email: 'user01@gmail.com',
  password: 'hola1234',
  password_confirmation: 'hola1234',
  phone: '+56 9 12345678',
  picture: 'image-04.png'
)

Cook.create(
  name: 'cocinero 01',
  email: 'cook01@gmail.com',
  phone: '+56 9 89786756',
  address: 'Dirección 123, Providencia',
  address_region: 'Región Metropolitana',
  address_commune: 'Providencia',
  address_city: 'Santiago',
  picture: 'image-01',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
  vedent, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)

Cook.create(
  name: 'cocinero 02',
  email: 'cook02@gmail.com',
  phone: '+56 9 45675623',
  address: 'Dirección 345, Santiago Centro',
  address_region: 'Región Metropolitana',
  address_commune: 'Santiago',
  address_city: 'Santiago',
  picture: 'image-02',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
  vedent, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)

Cook.create(
  name: 'cocinero 03',
  email: 'cook03@gmail.com',
  phone: '+56 9 89890098',
  address: 'Dirección 567, Maipú',
  address_region: 'Región Metropolitana',
  address_commune: 'Maipú',
  address_city: 'Santiago',
  picture: 'image-03',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
  vedent, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)



3.times do |x|
  4.times do |i|
    Menu.create(
      name:Faker::Food.dish,
      description: Faker::Food.ingredient,
      price:Faker::Commerce.price.to_i * 100,
      # picture: "http://lorempixel.com/400/200/food/#{i + 1}/",
      picture: "default_menu.png",
      cook_id: x + 1,
      date: Time.now
    )
  end
end