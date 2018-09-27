class API::V1::PiggiesController < ApplicationController

  def index
    @piggies = Piggy.all
    render json: @piggies
  end

  def show
    @piggy = Piggy.find(params[:id])
    render json: @piggy
  end

  def create
    @piggy = Piggy.new(piggy_params)

    if @piggy.save
      render json: @piggy, status: :accepted
    else
      render json: {errors: @piggy.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @piggy = Piggy.find(params[:id])

    if @piggy.update(piggy_params)
      render json: @piggy, status: :accepted
    else
      render json: {errors: @piggy.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  # come back to make logic changes
  def destroy
    @piggy = Piggy.find(params[:id])
    @piggy.destroy
  end


  private
  def piggy_params
    params.require(:piggy).permit(:name, :user_id)
  end

end
