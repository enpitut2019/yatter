# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(
        password: 'pass',
        password_confirmation: 'pass',
        email: 'enpit@sudame.net',
        name: 'enpit'
)


u2 = User.create(
    password: 'pass',
    password_confirmation: 'pass',
    email: 'enpit2@sudame.net',
    name: 'enpit2'
)


for i in 1..10
  Post.create(
      content: 'THIS IS A POST by u1 #' + i.to_s,
      user: User.find(1),
      status: i % 2
  )
end

for i in 11..20
  Post.create(
      content: 'THIS IS A POST by u2 #' + i.to_s,
      user: User.find(2),
      status: i % 2
  )
end

