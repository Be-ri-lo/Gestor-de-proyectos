# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Beatriz comentario, Esto es como para practicar, lo guardas en un archivo y lo ejecutas cuadno tu quieras, como la consola de rails.

10.times do |i|
    Project.create(name: "project-#{i + 1}", 
                   description: "Descripción del proyecto- #{i + 1}",
                   start_on: Date.today - (i).days, #hace referencia a los x días
                   finish_on: Date.today + (i).days,
                   state: Project.states.keys.sample #to_a es a array y randonea el array
                   )
end