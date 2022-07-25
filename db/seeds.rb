# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.create!(id: 1, email: 'mathieu.houde@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 2, email: 'patrick.thibault@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 3, email: 'francis.patry-jessop@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 4, email: 'david.amyot@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 5, email: 'marie-eve.goupil@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 6, email: 'francois.boivin@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 7, email: 'timothy.wever@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 8, email: 'kiril.kleinerman@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 9, email: 'felicia.hartono@codeboxx.biz', password: 'password123', password_confirmation: 'password123')
User.create!(id: 10, email: 'eileen.ai@codeboxx.biz', password: 'password123', password_confirmation: 'password123')




# Employee.create!(id: 1, first_name: 'Mathieu', last_name: 'Houde', title: 'Gopher', email: 'mathieu.houde@codeboxx.biz', user_id: 1)
# Employee.create!(id: 2, first_name: "Patrick", last_name: "Thibault", title: "Maximalist", email: 'patrick.thibault@codeboxx.biz', user_id: 2)
# Employee.create!(id: 3, first_name: "Francis", last_name: "Patry-Jessop", title: "Captain", email: 'francis.patry-jessop@codeboxx.biz', user_id: 3)
# Employee.create!(id: 4, first_name: "David", last_name: "Amyot", title: "The Man", email: 'david.amyot@codeboxx.biz', user_id: 4)
# Employee.create!(id: 5, first_name: "Marie-Ève", last_name: "Goupil", title: "AI Master", email: 'marie-eve.goupil@codeboxx.biz', user_id: 5)
# Employee.create!(id: 6, first_name: "François", last_name: "Boivin", title: "The Tank", email: 'francois.boivin@codeboxx.biz', user_id: 6)
# Employee.create!(id: 7, first_name: "Timothy", last_name: "Wever", title: "Beard whisperer", email: 'timothy.wever@codeboxx.biz', user_id: 7)
# Employee.create!(id: 8, first_name: "Kiril", last_name: "Kleinerman", title: "I <3 Winnipeg", email: 'kiril.kleinerman@codeboxx.biz', user_id: 8)
# Employee.create!(id: 9, first_name: "Felicia", last_name: "Hartono", title: "Scrums are too early", email: 'felicia.hartono@codeboxx.biz', user_id: 9)
# Employee.create!(id: 10, first_name: "Eileen", last_name: "Ai", title: "They really are.", email: 'eileen.ai@codeboxx.biz', user_id: 10)

# Faker::Config.locale = 'en-US'



# def createAddressfunction
#     address = Address.create!(
#         type_of_address: ['Business', 'Billing', 'Shipping', 'Home'].sample,
#         status: ['Active', 'Inactive'].sample,
#         entity: ['Customer', 'Building'].sample,
#         number_and_street: Faker::Address.street_address,
#         suite_or_apartment: Faker::Address.secondary_address,
#         city: Faker::Address.city,
#         postal_code: Faker::Address.zip_code,
#         country: Faker::Address.country,
#         notes: Faker::Lorem.paragraph(sentence_count: 2),
#     )

#     # return address

# end


# def createCustomerfunction()     
#     # address = createAddressfunction()
#     addresstest = Address.last
#     usertest = User.last
#     customer = Customer.create(
#         company_name: Faker::Company.name,
#         address_id: addresstest.id,
#         company_contact_full_name: Faker::Name.name,
#         company_contact_phone: Faker::PhoneNumber.phone_number,
#         company_contact_email: Faker::Internet.email,
#         company_description: Faker::Company.industry,
#         service_technical_authority_full_name: Faker::Name.name,
#         service_technical_authority_phone: Faker::PhoneNumber.phone_number,
#         service_technical_manager_email: Faker::Internet.email,
#         user_id: usertest.id,
#     )
#     customer.save

#     # return customer

# end

# # createCustomerfunction()

# def createEleColBatfunction()
    
#     elevator = Elevator.create(
#         serial_number: Faker::Number.number(digits: 8),
#         model: ["Standard", "premium", "Excelium"].sample,
#         elevator_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
#         status: ["Active", "Inactive", "Intervention"].sample,
#         commissioning_date: Faker::Date.between(from: '2019-07-06', to: '2020-07-06'),
#         last_inspection_date: Faker::Date.between(from: '2019-07-06', to: '2020-07-06'),
#         inspection_certificate: Faker::Lorem.paragraph,
#         information: Faker::Lorem.paragraphs,
#         notes: Faker::Lorem.paragraph(sentence_count: 2),
#     )
#     elevator.save

#     elevatortest = Elevator.last

#     column = Column.create(
#         column_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
#         number_of_floors_served: Faker::Number.between(from:2, to:150),
#         status: ["Active", "Inactive", "Intervention"].sample,
#         information: Faker::Lorem.paragraphs,
#         notes: Faker::Lorem.paragraph(sentence_count: 2),
#         elevator_id: elevatortest.id,
#     )
#     column.save

#     columntest = Column.last

#     employeeIdtest = Employee.last

#     battery = Battery.create(
#         batterie_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
#         status: ["Active", "Inactive", "Intervention"].sample,
#         employeeId: employeeIdtest.id,
#         commissioning_date: Faker::Date.between(from: '2019-07-06', to: '2020-07-06'),
#         last_inspection_date: Faker::Date.between(from: '2019-07-06', to: '2020-07-06'),
#         certificate_of_operation: Faker::Lorem.paragraphs,
#         informations: Faker::Lorem.paragraphs,
#         notes: Faker::Lorem.paragraph(sentence_count: 2),
#         column_id: columntest.id,
#     )
#     battery.save

# end

# def createBuildingdetailsfunction
    
#     building_detail = BuildingDetail.new(
#         key: Faker::Lorem.sentence,
#         value: Faker::Lorem.sentence(word_count: 2),
#     )
#     building_detail.save
#     # return building_detail

# end

# def createBuildingfunction
#     createEleColBatfunction()
#     # createCustomerfunction()
#     createAddressfunction()
#     customertest = Customer.last
#     building_detailtest = BuildingDetail.last
#     batterytest = Battery.last
#     # puts customertest.id   
#     addresstest = Address.last

#     building = Building.create!(  
#         number_and_street: ['AAA'].sample, 
#         building_administrator_full_name: Faker::Name.name,
#         building_administrator_email: Faker::Internet.email,
#         building_administrator_phone: Faker::PhoneNumber.phone_number,
#         building_technical_contact_full_name: Faker::Name.name,
#         building_technical_contact_email: Faker::Internet.email,
#         building_technical_contact_phone: Faker::PhoneNumber.phone_number,
#         customer_id: customertest.id,
#         building_detail_id: building_detailtest.id,
#         battery_id: batterytest.id,
#         address_id: addresstest.id,
#     )
#     # return building

# end

