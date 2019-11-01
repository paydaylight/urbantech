class Api::V1::ClothController < ApplicationController
  def process
    Picture.create(file: params[:file])
    render json: { status: 200, message: 'OK' }
  end
end
