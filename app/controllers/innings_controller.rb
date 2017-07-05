class InningsController < ApplicationController
  before_action :set_inning, only: [:show, :edit, :update, :destroy]

  # GET /innings
  def index
    @innings = Inning.all
  end

  # GET /innings/1
  def show
  end

  # GET /innings/new
  def new
    @inning = Inning.new
  end

  # GET /innings/1/edit
  def edit
  end

  # POST /innings
  def create
    @inning = Inning.new(inning_params)

    if @inning.save
      redirect_to @inning, notice: 'Inning was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /innings/1
  def update
    if @inning.update(inning_params)
      redirect_to @inning, notice: 'Inning was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /innings/1
  def destroy
    @inning.destroy
    redirect_to innings_url, notice: 'Inning was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inning
      @inning = Inning.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inning_params
      params.require(:inning).permit(:game_id, :number, :top_score, :bottom_score)
    end
end
