class Api::V1::ClothController < ApplicationController
  def process
    render json: { status: 200, message: 'OK' }
  end
end
