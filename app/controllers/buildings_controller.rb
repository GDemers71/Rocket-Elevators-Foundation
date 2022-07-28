class BuildingsController < ApplicationController
  before_action :set_building, only: %i[ show edit update destroy ]

  def get_buildings_by_customer
    @buildings = Building.where("customer_id = ?", params[:customer_id])
    respond_to do |format|
      format.json { render :json => @buildings}
    end
  end
  def building_search
    if params[:customer_id].present? && params[:customer_id].strip != ""
      @buildings = Building.where("customer_id = ?", params[:customer_id])
    else
      @buildings = Building.all
    end
  end

  # GET /buildings or /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1 or /buildings/1.json
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings or /buildings.json
  def create
    @building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to building_url(@building), notice: "Building was successfully created." }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1 or /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to building_url(@building), notice: "Building was successfully updated." }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1 or /buildings/1.json
  def destroy
    @building.destroy

    respond_to do |format|
      format.html { redirect_to buildings_url, notice: "Building was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def building_params
      params.require(:building).permit(:number_and_street, :building_administrator_full_name, :building_administrator_email, :building_administrator_phone, :building_technical_contact_full_name, :building_technical_contact_email, :building_technical_contact_phone)
    end
end
