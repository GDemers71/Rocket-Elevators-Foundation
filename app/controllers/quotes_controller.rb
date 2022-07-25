class QuotesController < ApplicationController
  require 'rubygems'
  require 'rest_client'
  require 'json'
  
  before_action :set_quote, only: %i[ show edit update destroy ]
  
  # GET /quotes or /quotes.json
  def index
    @quotes = Quote.all
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit

  end

  # POST /quotes or /quotes.json
  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.save
        contact_us = {
          email: "#{@quote.quote_email}", 
          priority: 1, 
          status: 2,
          type: "Feature Request",
          subject: "From #{@quote.compagny_name}",
          description: "A quote resquest for #{@quote.compagny_name} company from the email #{@quote.quote_email} has been made. 
            The quote is for a #{@quote.building_type} building and request a total of #{@quote.amount_of_elevator_needed} elevators from Rocket Elevators.",
        }.to_json
    
        contact_us_ticket = RestClient::Request.execute(
          method: :post, 
          url: 'https://codeboxx3519.freshdesk.com/api/v2/tickets',
          user: ENV["freshdesk_api_key"],
          password: "x",
          headers: {
            content_type: "application/json"
          },
          payload: contact_us
        )
        puts contact_us_ticket

        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully created." }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully updated." }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_url, notice: "Quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:building_type, :number_of_apartments, :number_of_floors, :number_of_basement, :number_of_businesses, :number_of_parking_space, :number_of_elevator_cages, :number_of_seperate_tenant_companies, :maximum_number_of_occupants_per_floor, :hours_of_activity, :quality_of_elevator_service, :unit_price_of_each_elevator, :amount_of_elevator_needed, :total_price_of_the_elevators, :installation_fees, :final_price, :quote_email, :compagny_name)
    end
end
