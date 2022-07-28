class ElevatorsController < ApplicationController
  include ActiveModel::Dirty
  require 'rubygems'
  require 'twilio-ruby'

  before_action :set_elevator, only: %i[ show edit update destroy ]

  def get_elevators_by_column
    @elevators = Elevator.where("column_id = ?", params[:column_id])
    respond_to do |format|
      format.json { render :json => @elevators }
    end
  end 
  def elevator_search
    if params[:column_id].present? && params[:column_id].strip != ""
      @elevators = Elevator.where("column_id = ?", params[:column_id])
    else
      @elevators = Elevator.all
    end
  end
 

  # GET /elevators or /elevators.json
  def index
    @elevators = Elevator.all
  end

  # GET /elevators/1 or /elevators/1.json
  def show
  end

  # GET /elevators/new
  def new
    @elevator = Elevator.new
  end

  # GET /elevators/1/edit
  def edit
  end

  # POST /elevators or /elevators.json
  def create
    @elevator = Elevator.new(elevator_params)

    respond_to do |format|
      if @elevator.save
        format.html { redirect_to elevator_url(@elevator), notice: "Elevator was successfully created." }
        format.json { render :show, status: :created, location: @elevator }
       
          
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elevator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elevators/1 or /elevators/1.json
  def update
    
    respond_to do |format|
      if @elevator.update(elevator_params)
          format.html { redirect_to elevator_url(@elevator), notice: "Elevator was successfully updated." }
          format.json { render :show, status: :ok, location: @elevator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elevator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elevators/1 or /elevators/1.json
  def destroy
    @elevator.destroy

    respond_to do |format|
      format.html { redirect_to elevators_url, notice: "Elevator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elevator
      @elevator = Elevator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elevator_params
      params.require(:elevator).permit(:serial_number, :model, :type, :status, :commissioning_date, :last_inspection_date, :inspection_certificate, :information, :notes)
    end
end