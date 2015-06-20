class AttendacesController < ApplicationController
  before_action :set_attendace, only: [:show, :edit, :update, :destroy]

  # GET /attendaces
  # GET /attendaces.json
  def index
    @attendaces = Attendace.all
  end

  # GET /attendaces/1
  # GET /attendaces/1.json
  def show
  end

  # GET /attendaces/new
  def new
    @attendace = Attendace.new
  end

  # GET /attendaces/1/edit
  def edit
  end

  # POST /attendaces
  # POST /attendaces.json
  def create
    @attendace = Attendace.new(attendace_params)

    respond_to do |format|
      if @attendace.save
        format.html { redirect_to @attendace, notice: 'Attendace was successfully created.' }
        format.json { render :show, status: :created, location: @attendace }
      else
        format.html { render :new }
        format.json { render json: @attendace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendaces/1
  # PATCH/PUT /attendaces/1.json
  def update
    respond_to do |format|
      if @attendace.update(attendace_params)
        format.html { redirect_to @attendace, notice: 'Attendace was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendace }
      else
        format.html { render :edit }
        format.json { render json: @attendace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendaces/1
  # DELETE /attendaces/1.json
  def destroy
    @attendace.destroy
    respond_to do |format|
      format.html { redirect_to attendaces_url, notice: 'Attendace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendace
      @attendace = Attendace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendace_params
      params.require(:attendace).permit(:user_uid, :user_id, :event_id)
    end
end
