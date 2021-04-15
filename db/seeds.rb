# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Document.destroy_all


juan = User.create(
    {
    name: "Juan",
    email: "juan@gmail.com",
    password: "juan"
    }
)


documente = Document.create(
    {
        customer_code: "2001", 
        company_name: "Sales Brazil",
        cnpj: "something", 
        address: "3930 w berteau Brazil", 
        email: "sales@gmail.com", 
        user_id: juan.id,
    })