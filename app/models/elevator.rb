require 'slack-notifier'
class Elevator < ApplicationRecord
    belongs_to :column
    after_update :twilio
    after_update :hello

    def hello
        puts '---------------'
        puts 'hello'
        puts '---------------'

        notifier = Slack::Notifier.new ENV['slack_key']
        notifier.ping "The Elevator #{id} with Serial Number #{serial_number} changed status from #{status_before_last_save} to #{status} "
    end    

    # def do_something
    #     puts '------does it work ?------'
    #     ENV['slack_key']
    #     notifier = Slack::Notifier.new "https://hooks.slack.com/services/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L"
    #     notifier.ping "Hello World"
    # end  
    
    def twilio
        if @elevator_status_changed == "Intervention" then 
            
          account_sid = ENV['TWILIO_ACCOUNT_SID']
          auth_token = ENV['TWILIO_AUTH_TOKEN']
          @client = Twilio::REST::Client.new(account_sid, auth_token)
  
          message = @client.messages.create(
              to: '+14186557999',
              from: '+15203416848',
              body: "The status from elevator #{id} in building #{column.battery.building.id} has changed from #{status_before_last_save} to #{status}."
          )
        end
    end
end
 