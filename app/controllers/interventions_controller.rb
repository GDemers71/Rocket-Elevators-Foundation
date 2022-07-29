class InterventionsController < ApplicationController
  require 'rubygems'
  require 'rest_client'
  require 'json'
  before_action :set_intervention, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /interventions or /interventions.json
  def index
    @interventions = Intervention.all
  end

  # GET /interventions/1 or /interventions/1.json
  def show
  end

  # GET /interventions/new
  def new
    @intervention = Intervention.new
  end

  # GET /interventions/1/edit
  def edit
  end

  # POST /interventions or /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)
      @intervention.author = current_user.email
      @intervention.customer_id = params[:customer_id]
      @intervention.building_id = params[:building_id]
      @intervention.battery_id = params[:battery_id]
      @intervention.column_id = params[:column_id]
      @intervention.elevator_id = params[:elevator_id]
      @intervention.customer_id = params[:customer_id]
      @intervention.customer_id = params[:customer_id]

    respond_to do |format|
      if @intervention.save
        format.html { redirect_to intervention_url(@intervention), notice: "Intervention was successfully created." }
        format.json { render :show, status: :created, location: @intervention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end

    customer = Customer.find(params[:customer_id])

        intervention_ticket = {
          email: 'gabrieldemers71@gmail.com', 
          priority: 1, 
          status: 2,
          type: "Incident",
          subject: "Incident #{@intervention.id}",
          description: "An intervention resquest made by #{@intervention.author} for #{customer.company_name} company for the building id: #{@intervention.building_id} and the battery id: #{@intervention.battery_id}, column id: #{@intervention.column_id} and elevator id: #{@intervention.elevator_id} for the employee id: #{@intervention.employee_id}",
        }.to_json
    
        send_intervention_ticket = RestClient::Request.execute(
          method: :post, 
          url: 'https://gdrocketelevator.freshdesk.com/api/v2/tickets',
          user: ENV["freshdesk_api_key"],
          password: "x",
          headers: {
            content_type: "application/json"
          },
          payload: intervention_ticket
        )

  end

  # PATCH/PUT /interventions/1 or /interventions/1.json
  def update
    respond_to do |format|
      if @intervention.update(intervention_params)
        format.html { redirect_to intervention_url(@intervention), notice: "Intervention was successfully updated." }
        format.json { render :show, status: :ok, location: @intervention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1 or /interventions/1.json
  def destroy
    @intervention.destroy

    respond_to do |format|
      format.html { redirect_to interventions_url, notice: "Intervention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :start, :end, :result, :report, :status)
    end
end
