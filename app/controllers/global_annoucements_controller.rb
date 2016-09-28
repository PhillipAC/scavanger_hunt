class GlobalAnnoucementsController < ApplicationController
  before_action :set_global_annoucement, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource

  # GET /global_annoucements
  # GET /global_annoucements.json
  def index
    @global_annoucements = GlobalAnnoucement.all
  end

  # GET /global_annoucements/1
  # GET /global_annoucements/1.json
  def show
  end

  # GET /global_annoucements/new
  def new
    @global_annoucement = GlobalAnnoucement.new
  end

  # GET /global_annoucements/1/edit
  def edit
  end

  # POST /global_annoucements
  # POST /global_annoucements.json
  def create
    @global_annoucement = GlobalAnnoucement.new(global_annoucement_params)

    respond_to do |format|
      if @global_annoucement.save
        format.html { redirect_to @global_annoucement, notice: 'Global annoucement was successfully created.' }
        format.json { render :show, status: :created, location: @global_annoucement }
      else
        format.html { render :new }
        format.json { render json: @global_annoucement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /global_annoucements/1
  # PATCH/PUT /global_annoucements/1.json
  def update
    respond_to do |format|
      if @global_annoucement.update(global_annoucement_params)
        format.html { redirect_to @global_annoucement, notice: 'Global annoucement was successfully updated.' }
        format.json { render :show, status: :ok, location: @global_annoucement }
      else
        format.html { render :edit }
        format.json { render json: @global_annoucement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /global_annoucements/1
  # DELETE /global_annoucements/1.json
  def destroy
    @global_annoucement.destroy
    respond_to do |format|
      format.html { redirect_to global_annoucements_url, notice: 'Global annoucement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_annoucement
      @global_annoucement = GlobalAnnoucement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_annoucement_params
      params.require(:global_annoucement).permit(:content)
    end
end
