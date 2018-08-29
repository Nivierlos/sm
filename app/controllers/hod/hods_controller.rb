class Hod::HodsController < ApplicationController
  before_action :set_hod_hod, only: [:show, :edit, :update, :destroy]

  # GET /hod/hods
  # GET /hod/hods.json
  def index
    @hod_hods = Hod::Hod.all
  end

  # GET /hod/hods/1
  # GET /hod/hods/1.json
  def show
  end

  # GET /hod/hods/new
  def new
    @hod_hod = Hod::Hod.new
  end

  # GET /hod/hods/1/edit
  def edit
  end

  # POST /hod/hods
  # POST /hod/hods.json
  def create
    @hod_hod = Hod::Hod.new(hod_hod_params)

    respond_to do |format|
      if @hod_hod.save
        format.html { redirect_to @hod_hod, notice: 'Hod was successfully created.' }
        format.json { render :show, status: :created, location: @hod_hod }
      else
        format.html { render :new }
        format.json { render json: @hod_hod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hod/hods/1
  # PATCH/PUT /hod/hods/1.json
  def update
    respond_to do |format|
      if @hod_hod.update(hod_hod_params)
        format.html { redirect_to @hod_hod, notice: 'Hod was successfully updated.' }
        format.json { render :show, status: :ok, location: @hod_hod }
      else
        format.html { render :edit }
        format.json { render json: @hod_hod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hod/hods/1
  # DELETE /hod/hods/1.json
  def destroy
    @hod_hod.destroy
    respond_to do |format|
      format.html { redirect_to hod_hods_url, notice: 'Hod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hod_hod
      @hod_hod = Hod::Hod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hod_hod_params
      params.require(:hod_hod).permit(:name, :email, :password_hash, :password_salt, :department_id, :sex, :phone)
    end
end
