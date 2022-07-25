namespace :fake do
  require "json"

  # Create data in mySQL database
  task data: :environment do
    puts "-----mySQL-----"
    file = File.read(File.join(Rails.root, 'lib', 'addresses.json'))
    data = JSON.parse(file)
    addresses = data["addresses"]

    addresses.each do |address|
      #pp "Address is : #{address["address1"]}"

      user = User.create!(
        email: Faker::Internet.email, 
        password: 'password123', 
      )

      _address = Address.create!(
        type_of_address: ['Business', 'Billing', 'Shipping', 'Home'].sample,
        status: ['Active', 'Inactive'].sample,
        entity: ['Customer', 'Building'].sample,
        number_and_street: address["address1"],
        suite_or_apartment: Faker::Address.secondary_address,
        city: address["city"],
        postal_code: address["postalCode"],
        country: address["state"],
        latitude: address["coordinates"]["lat"],
        longitude: address["coordinates"]["lng"],
        notes: Faker::Lorem.paragraph(sentence_count: 2),
      )

      customer = Customer.create!(
        company_name: Faker::Company.name,
        address: _address,
        company_contact_full_name: Faker::Name.name,
        company_contact_phone: Faker::PhoneNumber.phone_number,
        company_contact_email: Faker::Internet.email,
        company_description: Faker::Company.industry,
        service_technical_authority_full_name: Faker::Name.name,
        service_technical_authority_phone: Faker::PhoneNumber.phone_number,
        service_technical_manager_email: Faker::Internet.email,
        user: user,
      )

        building = Building.create!(  
        #number_and_street: ['AAA'].sample, 
        building_administrator_full_name: Faker::Name.name,
        building_administrator_email: Faker::Internet.email,
        building_administrator_phone: Faker::PhoneNumber.phone_number,
        building_technical_contact_full_name: Faker::Name.name,
        building_technical_contact_email: Faker::Internet.email,
        building_technical_contact_phone: Faker::PhoneNumber.phone_number,
        customer: customer,
        #building_detail: building_detail,
        #battery: battery,
        address: _address,
      )

      building_detail = BuildingDetail.create!(
        key: Faker::Lorem.sentence,
        value: Faker::Lorem.sentence(word_count: 2),
        building: building,
      )
      
      employee = Employee.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        title: Faker::Name.middle_name,
        email: Faker::Internet.email,  
        user: user,
      )

      5.times do
        battery = Battery.create!(
          batterie_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
          status: ["Active", "Inactive", "Intervention"].sample,
          employeeId: ["aaa"].sample,
          commissioning_date: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
          last_inspection_date: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
          certificate_of_operation: Faker::Lorem.sentence,
          informations: Faker::Lorem.paragraphs,
          notes: Faker::Lorem.paragraph(sentence_count: 2),
          building: building,
          employee: employee,
        )

        column = Column.create!(
          column_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
          number_of_floors_served: Faker::Number.between(from:2, to:150),
          status: ["Active", "Inactive", "Intervention"].sample,
          information: Faker::Lorem.paragraphs,
          notes: Faker::Lorem.paragraph(sentence_count: 2),
          battery: battery,
        )
      
        elevator = Elevator.create(
          serial_number: Faker::Number.number(digits: 8),
          model: ["Standard", "premium", "Excelium"].sample,
          elevator_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
          status: ["Active", "Inactive", "Intervention"].sample,
          commissioning_date: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
          last_inspection_date: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
          inspection_certificate: Faker::Lorem.paragraph,
          information: Faker::Lorem.paragraphs,
          notes: Faker::Lorem.paragraph(sentence_count: 2),
          column: column,
        )
      end

      25.times do 
        lead = Lead.create(
          full_name: Faker::Name.name,
          company_name: Faker::Company.industry,
          email: Faker::Internet.email,
          phone: Faker::PhoneNumber.phone_number,
          project_name: Faker::Lorem.sentence(word_count: 3),
          project_description: Faker::Lorem.paragraph(sentence_count: 2),
          department: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
          message: Faker::Lorem.paragraph(sentence_count: 2),
          file_attachment: ['test'].sample,
          lead_created_at: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
        )

        quote = Quote.create!(
          building_type: ["Residential", "Corportate", "Commercial", "Hybrid"].sample,
          number_of_apartments: Faker::Number.between(from:40, to:800),
          number_of_floors: Faker::Number.between(from:5, to:100),
          number_of_basement: Faker::Number.between(from:1, to:5),
          number_of_businesses: Faker::Number.between(from:1, to:20),
          number_of_parking_space: Faker::Number.between(from:1, to:350),
          number_of_elevator_cages: Faker::Number.between(from:1, to:20),
          number_of_seperate_tenant_companies: Faker::Number.between(from:1, to:20),
          maximum_number_of_occupants_per_floor: Faker::Number.between(from:80, to:300),
          hours_of_activity: Faker::Number.between(from:1, to:24),
          quality_of_elevator_service: ["Standard", "premium", "Excelium"].sample,
          unit_price_of_each_elevator: Faker::Number.number(digits: 4),
          amount_of_elevator_needed: Faker::Number.between(from:4, to:12),
          total_price_of_the_elevators: Faker::Number.number(digits: 6),
          installation_fees: Faker::Number.number(digits: 3),
          final_price: Faker::Number.number(digits: 7),
          quote_email: Faker::Internet.email,
          compagny_name: Faker::Company.industry,
          quote_created_at: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
        )
      end
    end
    #data = JSON.load file
    #pp hash["addresses"]
    puts "-----mySQL-----"

    ########################################
    ## Create data in postgreSQL database ##
    ########################################
    puts "*****postgreSQL*****"
    Lead.all.each do |l|
      contact = FactContact.create!(
        creation_date: l.lead_created_at,
        company_name: l.company_name,
        email: l.email,
        project_name: l.project_name,
      )
    end

    Quote.all.each do |q|
      quote = FactQuote.create!(
        creation_date: q.quote_created_at,
        company_name: q.compagny_name,
        quote_email: q.quote_email,
        nb_elevator: q.amount_of_elevator_needed,
      )
    end

    Elevator.all.each do |e|
      elevators = FactElevator.create!(
        serial_number: e.serial_number,
        date_of_commissioning: e.commissioning_date,
        building_id: e.column.battery.building,
        customer_id: e.column.battery.building.customer_id,
        building_city: e.column.battery.building.address.city,
      )
    end
    
    Customer.all.each do |c|
      count_elevator = 0
      c.buildings.all.each do |building|
        building.batteries.all.each do |battery|
          battery.columns.all.each do |column|
            count_elevator += column.elevators.count
          end
        end
      end
      elevators = DimCustomer.create!(
        creation_date: c.created_at,
        company_name: c.company_name,
        full_name: c.company_contact_full_name,
        company_contact_email: c.company_contact_email,
        nb_elevator: count_elevator,
        customer_city: c.address.city,
        )
    end

    Employee.all.each do |i|
      employeeElevator = 0
      i.batteries.all.each do |battery|
        battery.columns.all.each do |column|
          employeeElevator = column.elevators.find(column.id)
        end
      end
      intervention = FactIntervention.create!(
        EmployeeID: i.id,
        BuildingID: employeeElevator.column.battery.building_id,
        BatteryID: employeeElevator.column.battery_id,
        ColumnID: employeeElevator.column_id,
        ElevatorID: employeeElevator.id,
        Intervention_started_at: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
        Intervention_ended_at: Faker::Date.between(from: '2019-07-06', to: '2022-07-06'),
        Result: ["Success", "Failure", "Incomplete"].sample,
        Report: Faker::Lorem.paragraph(sentence_count: 2),
        Status: ["Pending", "InProgress", "Interrupted", "Resumed", "Complete"].sample,
      )
    end

    puts "*****postgreSQL*****"

    # How many contact requests per month
    puts "%%%%%monthly_contact%%%%%"
    monthly_contact = FactContact.group_by_month(:creation_date).count
    puts "%%%%%monthly_contact%%%%%"

    # How many quotes per month
    puts "&&&&&monthly_quotes&&&&&"
    monthly_quotes = FactQuote.group_by_month(:creation_date).count
    puts "&&&&&monthly_quotes&&&&&"

    # # Create data in Stats table database
    puts "$$$$$Stat$$$$$"
    Customer.all.each do |c|
      count_elevator = 0
      c.buildings.all.each do |building|
        building.batteries.all.each do |battery|
          battery.columns.all.each do |column|
            count_elevator += column.elevators.count
          end
        end
      end
        stat = Stat.create!(
          monthly_contact: monthly_contact,
          monthly_quotes: monthly_quotes,
          number_elevator: count_elevator,
        )
    end
    puts "$$$$$Stat$$$$$"
  


    task question1: :environment do
      question1 =FactQuote.select("date_trunc('month', created_at) as month").group("month")
    end
  end
end