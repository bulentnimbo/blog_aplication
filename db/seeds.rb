# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "ezel@gmail.com", name: "EZEL", password: "123456", password_confirmation: "123456" )
User.create(email: "asmin@gmail.com", name: "ASMİN", password: "123456", password_confirmation: "123456" )

10.times do |x|
    Post.create(title: "Title #{2*x + 1}", body: "Body #{2*x + 1} World!", user_id: User.first.id)
    Post.create(title: "Title #{2*x + 2}", body: "Body #{2*x + 2} World!", user_id: User.last.id)
end