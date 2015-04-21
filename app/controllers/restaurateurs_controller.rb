class RestaurateursController < ApplicationController
  # load_and_authorize_resource
  before_action :set_restaurateur, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /restaurateurs
  # GET /restaurateurs.json
  # def index
  #   @restaurateurs = Restaurateur.all
  # end

  # GET /restaurateurs/1
  # GET /restaurateurs/1.json
  # def show
  #   @restaurants = @restaurateur.restaurants
  # end

  # GET /restaurateurs/new
  def new
    @restaurateur = Restaurateur.new
  end

  # GET /restaurateurs/1/edit
  def edit
  end

  # POST /restaurateurs
  # POST /restaurateurs.json
  def create
    @restaurateur = Restaurateur.new(restaurateur_params)

    respond_to do |format|
      if @restaurateur.save
        format.html { redirect_to current_user, notice: 'Restaurateur was successfully created.' }
        format.json { render :show, status: :created, location: @restaurateur }
      else
        format.html { render :new }
        format.json { render json: @restaurateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurateurs/1
  # PATCH/PUT /restaurateurs/1.json
  def update
    respond_to do |format|
      if @restaurateur.update(restaurateur_params)
        format.html { redirect_to @restaurateur, notice: 'Restaurateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurateur }
      else
        format.html { render :edit }
        format.json { render json: @restaurateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurateurs/1
  # DELETE /restaurateurs/1.json
  def destroy
    @restaurateur.destroy
    respond_to do |format|
      format.html { redirect_to restaurateurs_url, notice: 'Restaurateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurateur
      @restaurateur = Restaurateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurateur_params
      params.require(:restaurateur).permit(:user_id, :active)
    end
end
