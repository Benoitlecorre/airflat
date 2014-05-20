class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  # GET /flats/1.json
  def show
    # @photos = @flat.photos

  end

  # GET /flats/new
  def new
    @flat = Flat.new
    @photo = Photo.new
  end

  # GET /flats/1/edit
  def edit
    @photo = Photo.new
  end

  def create
    flat = Flat.create(flat_params)
    flat.photos.create(photo_params)

    redirect_to flat_path(flat)

  end

  def update
    @flat.update!(flat_params)
    flash[:info] = "You have updated successfully the #{@flat.title}"
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    def photo_params
      params.require(:flat).permit(:picture)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_params
      params.require(:flat).permit(:title, :description, :address, :dayprice)
    end

end
