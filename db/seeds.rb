# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(name: 'valeria')
clinic = Clinic.create(user_id: 1, name: 'Yourvet', address: '2934 5th Ave, NY', services: 'bloodwork, cpr')
clinic3 = Clinic.create(user_id: 1, name: 'EmergencyVet', address: '1134 4th Ave, NY', services: 'cpr')
pet = Pet.create(user_id: 1, name: 'Billy', species: 'dog', age: 4)

user2 = User.create(name: 'Ermal')
clinic2 = Clinic.create(user_id: 2, name: '24hclinic', address: '2345 Ditmars Blvd, NY', services: 'bloodwork, cpr, surgery')
pet2 =Pet.create(user_id: 2, name: 'Brisa', species: 'cat', age: 12)