# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
ProductType.destroy_all
Vendor.destroy_all
Tax.destroy_all

electronic = Category.create name: "Electronics"
book = Category.create name: "Books"
movie = Category.create name: "Movies"
clothes = Category.create name: "Clothes"

ProductType.create name: "Phone", category_id: electronic.id
ProductType.create name: "Laptops", category_id: electronic.id
ProductType.create name: "Tablets", category_id: electronic.id

ProductType.create name: "Horror", category_id: book.id
ProductType.create name: "Fiction", category_id: book.id
ProductType.create name: "Sex", category_id: book.id

ProductType.create name: "Horror", category_id: movie.id
ProductType.create name: "Comedy", category_id: movie.id
ProductType.create name: "Action", category_id: movie.id

ProductType.create name: "T-Shirts", category_id: clothes.id
ProductType.create name: "Shorts", category_id: clothes.id
ProductType.create name: "Jeans", category_id: clothes.id

addr = Address.create street: "Rio Guadalquivir", external_number: "422", country: "Mexico", neighborhood: "Del Valle", cp: "63710", state: "Nuevo Leon", city: "Monterrey" 

Vendor.create name: "Nike"
Vendor.create name: "Apple"
Vendor.create name: "Editorial" 

Warehouse.create name: "Almacen 1"
Warehouse.create name: "Almacen 2"

Tax.create name: "IVA"
Tax.create name: "ISR"

Store.create name: "Jurgen's Store"