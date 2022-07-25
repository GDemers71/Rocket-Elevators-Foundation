class LeadsController < ApplicationController
  require 'rubygems'
  require 'rest_client'
  require 'json'
  require 'sendgrid-ruby'
  include SendGrid
 
  before_action :set_lead, only: %i[ show edit update destroy ]

  # GET /leads or /leads.json
  def index
    @leads = Lead.all
  end

  # GET /leads/1 or /leads/1.json
  def show
  end

  # GET /leads/new
  def new
    @lead = Lead.new
  end

  # GET /leads/1/edit
  def edit
  end

  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)
    respond_to do |format|
      if @lead.save
        # contact_us = {
        #   email: "#{@lead.email}", 
        #   priority: 1, 
        #   status: 2,
        #   type: "Question",
        #   subject: "#{@lead.full_name} from #{@lead.company_name}",
        #   description: "The contact #{@lead.full_name} from company #{@lead.company_name} can be reached at email #{@lead.email} and at phone number #{@lead.phone}. 
        #   #{@lead.department} has a project named #{@lead.project_name} which would require contribution from Rocket Elevators. 
        #   #{@lead.project_description}",
        # }.to_json
    
        # contact_us_ticket = RestClient::Request.execute(
        #   method: :post, 
        #   url: 'https://codeboxx3519.freshdesk.com/api/v2/tickets',
        #   user: ENV["freshdesk_api_key"],
        #   password: "x",
        #   headers: {
        #     content_type: "application/json"
        #   },
        #   payload: contact_us
        # )
        # puts contact_us_ticket
        
        from = SendGrid::Email.new(email: 'gabmathmo123@gmail.com')
                to = SendGrid::Email.new(email: "#{@lead.email}")
                subject = "Greetings"
                content = SendGrid::Content.new(type: 'text/html', value: "Greetings #{@lead.full_name} ! </br>
                <p>We thank you for contacting Rocket Elevators to discuss the opportunity to contribute to your project #{@lead.project_name}.</p></br>
                A representative from our team will be in touch with you very soon. We look forward to demonstrating the value of our solutions and helping you choose the appropriate product given your requirements.</br>
                <p>We will Talk soon</p> </br>
                The Rocket Team </br>
                <p><img width=800 src=https://mathieubernier.com/assets/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png></p>"
                )
                mail = SendGrid::Mail.new(from, subject, to, content)
                puts "====================================="

                
                sg = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])
                response = sg.client.mail._('send').post(request_body: mail.to_json)
                puts response.status_code
                puts "====================================="
                puts response.body
                puts "====================================="
                #puts response.parsed_body
                puts "====================================="
                puts response.headers



        format.html { redirect_to lead_url(@lead), notice: "Your message was successfully sent." }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads/1 or /leads/1.json
  def update
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to lead_url(@lead), notice: "Your message was successfully updated." }
        format.json { render :show, status: :ok, location: @lead }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1 or /leads/1.json
  def destroy
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to leads_url, notice: "Lead was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:lead).permit(:full_name, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :file_attachment)
    end
end