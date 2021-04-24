# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(name: "Vampeta", age: 47)
Author.create(name: "toninho", age: 34)
Movie.create(name:"toy story", description:"filme sobre brinquedos que ganham vida, woody e buzz contra o mal", movie_type: "infantil", censor: "nao", author_id: Author.first.id)
Movie.create(name:"toy story 2", description:"filme sobre brinquedos que ganham vida, mas agora é uma continuação", movie_type: "infantil", censor: "nao", author_id: Author.first.id)
Movie.create(name:"toy story 3", description:"filme sobre brinquedos que ganham vida, a trilogia secreta dos brinquedos", movie_type: "infantil", censor: "nao", author_id: Author.last.id)
Movie.create(name:"toy story 4", description:"filme sobre brinquedos que ganham vida, um novo dono? uma nova trilogia?", movie_type: "infantil", censor: "nao", author_id: Author.last.id)
