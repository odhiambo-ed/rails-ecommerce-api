# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   
30.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.name,
    address: Faker::Address.full_address
  )
end

5.times do
  Company.create!(
    name: Faker::Company.name,
  )
end


Category.create([
  { name: "Electronics" }, 
  { name: "Clothing" }, 
  { name: "Sports" }, 
  { name: "Books" }
])

20.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    img: Faker::Avatar.image,
    description: Faker::Lorem.paragraph,
    company_id: Company.all.sample.id,
    category_id: Category.all.sample.id,
  )
end

70.times do
  Order.create!(
    product_id: Product.all.sample.id,
    user_id: User.all.sample.id,
  )
end
