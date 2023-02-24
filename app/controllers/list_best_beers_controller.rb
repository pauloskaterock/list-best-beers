class ListBestBeersController < ApplicationController
  before_action :set_list_best_beer, only: %i[ show edit update destroy ]

  # GET /list_best_beers or /list_best_beers.json
  def index
    @list_best_beers = ListBestBeer.all
  end

  # GET /list_best_beers/1 or /list_best_beers/1.json
  def show
  end

  # GET /list_best_beers/new
  def new
    @list_best_beer = ListBestBeer.new
  end

  # GET /list_best_beers/1/edit
  def edit
  end

  # POST /list_best_beers or /list_best_beers.json
  def create
    @list_best_beer = ListBestBeer.new(list_best_beer_params)

    respond_to do |format|
      if @list_best_beer.save
        format.html { redirect_to list_best_beer_url(@list_best_beer), notice: "List best beer was successfully created." }
        format.json { render :show, status: :created, location: @list_best_beer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @list_best_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_best_beers/1 or /list_best_beers/1.json
  def update
    respond_to do |format|
      if @list_best_beer.update(list_best_beer_params)
        format.html { redirect_to list_best_beer_url(@list_best_beer), notice: "List best beer was successfully updated." }
        format.json { render :show, status: :ok, location: @list_best_beer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @list_best_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_best_beers/1 or /list_best_beers/1.json
  def destroy
    @list_best_beer.destroy

    respond_to do |format|
      format.html { redirect_to list_best_beers_url, notice: "List best beer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_best_beer
      @list_best_beer = ListBestBeer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_best_beer_params
      params.require(:list_best_beer).permit(:title, :description, :text)
    end
end
