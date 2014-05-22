class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  respond_to :js, :html

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  # GET /flats/1.json
  def show
    # @photos = @flat.photos
    @flat = Flat.find(params[:id])
  end

  # GET /flats/new
  def new

    @flat = Flat.new
    @photo = Photo.new
    authorize @flat
  end

  # GET /flats/1/edit
  def edit
    @photo = Photo.new
  end

  def create

    flat = Flat.create(flat_params)
    flat.photos.create(photo_params) if !photo_params().blank?
    authorize flat
    redirect_to flat_path(flat)

  end

  def update
    @flat.update!(flat_params)
    @flat.photos.create(photo_params) if !photo_params().blank?
    flash[:info] = "You have updated successfully the #{@flat.title}"

    respond_with do |format|
      format.js
      format.html { redirect_to flat_path(@flat) }
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
      authorize @flat
    end

    def photo_params
      params.require(:flat).permit(:file)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_params
      params.require(:flat).permit(:title, :description, :address, :dayprice)
    end

end
