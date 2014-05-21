class PhotosController < ApplicationController
  def destroy
    Photo.find(params[:id]).destroy!

    render json: { status: 'OK' }
  end
end