# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(
        password: 'pass',
        password_confirmation: 'pass',
        email: 'enpit@sudame.net',
        name: 'enpit'
)


for i in 1..10
  p = Post.new(
      content: 'THIS IS A POST #' + i.to_s,
      user: u,
      status: i % 2
  )
  p.save
end

