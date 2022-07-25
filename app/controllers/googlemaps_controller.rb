class GooglemapsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        #@test = Building.all
        

        @test = []
        
        Building.all.each do |b|
            nbofelevator = 0
            b.batteries.all.each do |battery|
                battery.columns.all.each do |column|
                    column.elevators.count
                    nbofelevator += column.elevators.count
                end
            end

            nboffloors = 0
            b.batteries.all.each do |battery|
                battery.columns.all.each do |column|
                    column.number_of_floors_served
                nboffloors += column.number_of_floors_served
                end  
            end
           
            @test.push(
                lat: b.addresses.latitude,
                lng: b.addresses.longitude,
                address: b.address.number_and_street,
                customername: b.customer.company_contact_full_name,
                numberofbattery: b.battery_ids.count,
                techcontactname: b.building_technical_contact_full_name,
                numberofcolumns: b.batteries.columns.count,
                numberofelevators: nbofelevator,
                numberoffloors: nboffloors,
            )
                        
        end
        puts "-----"
        puts @test
        puts "-----"

    
    end
   
    def googlemapspage
    end

end
