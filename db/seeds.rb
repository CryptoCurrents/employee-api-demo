100.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Employee.create(
                  first_name: first_name,
                  last_name: last_name,
                  email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                  phone: Faker::PhoneNumber.phone_number
                  )
end