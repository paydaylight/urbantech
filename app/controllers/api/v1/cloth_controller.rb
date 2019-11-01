class Api::V1::ClothController < ApplicationController
  def process
    pic = Picture.create(file: params[:file])
    
    if pic.valid?
      render json: { status: 200, message: 'OK' }
    else
      render json: { status: 400, message: pic.errors.full_messages.first }
    end
  end
end
