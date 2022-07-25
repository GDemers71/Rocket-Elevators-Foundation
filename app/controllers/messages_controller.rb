class MessagesController < ApplicationController
    require 'aws-sdk-polly'

    

        

   
    def patate
        puts "-------------"
        client = Aws::Polly::Client.new(
            region: 'us-west-2',
            credentials: Aws::Credentials.new(ENV['amazon_polly_key_id'], ENV['amazon_polly_secret_access_key'])
           
        )
        elevators = Elevator.all.count
        Elevator.all.count
        
        buildings = Building.all.count
        Building.all.count

        customers = Customer.all.count
        Customer.all.count

        quotes = Quote.all.count
        Quote.all.count

        leads = Lead.all.count
        Lead.all.count

        batteries = Battery.all.count
        Battery.all.count   
         
         
        # number_of_cities =  0
        # Address.all.each do |a|
        #     a.city do |c|
        #         city.count
        #         number_of_cities =
        #     end
        # end 
           
        elevetors_offline =  0
        Elevator.all.each do |e|
            if e.status != "Active"
                elevetors_offline +=1
            end
        end

        puts client
        result = client.synthesize_speech(output_format: 'mp3', text: "Greetings. There are currently #{elevators} elevators
        deployed, in the #{buildings} buildings, of your #{customers} customers. Currently, #{elevetors_offline} elevators are
        not in Running Status, and, are being serviced. You currently have #{quotes} quotes awaiting processing. You currently have
        #{leads} leads in your contact requests. #{batteries} Batteries are deployed, across 17 cities",
        voice_id: 'Joanna', text_type: "text", sample_rate: "16000")

        test = result.audio_stream
       
        puts result 

        IO.copy_stream(test, "app/assets/audio/speech.mp3") 

    end
end
