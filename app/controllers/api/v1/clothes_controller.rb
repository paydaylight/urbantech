class Api::V1::ClothesController < ApplicationController
  def process
    pic = Picture.new
    pic.file = params[:file]

    if pic.save
      render json: { status: 200, message: 'OK' }
    else
      render json: { status: 400, message: pic.errors.full_messages.first }
    end
  end
end
