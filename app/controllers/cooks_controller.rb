class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update, :destroy]

  # GET /cooks
  # GET /cooks.json
  def index
    @cooks = Cook.includes(:user)
  end

  # GET /cooks/1
  # GET /cooks/1.json
  def show
  end

  # GET /cooks/new
  def new
    @cook    = Cook.new
    @hosts   = Host.all
    @recipes = Recipe.all
  end

  # POST /cooks
  # POST /cooks.json
  def create
    @cook = Cook.new(cook_params.merge(user_id: current_user.id))
    @cook.log = cook @cook

    respond_to do |format|
      if @cook.save
        format.html { redirect_to @cook, notice: 'Cook was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cook }
      else
        format.html { render action: 'new' }
        format.json { render json: @cook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooks/1
  # DELETE /cooks/1.json
  def destroy
    @cook.destroy
    respond_to do |format|
      format.html { redirect_to cooks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cook
      @cook = Cook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cook_params
      params.require(:cook).permit(:host_id, :recipe_id, :user_id, :success, :log, :memo)
    end

    def cook(c)
      require 'nicony/mina'
      mina = Nicony::Mina.new
      mina.set :domain, c.host.address
      mina.raw = c.recipe.tasks

      mina.run c.recipe.name
    end
end
