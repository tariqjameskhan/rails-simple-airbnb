class FlatsController < ApplicationController
  before_action :set_flat, only: %i[new create show edit update destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end



# def index
#   @restaurants = Restaurant.all
# end

# def show
#   @restaurant = Restaurant.find(params[:id])
# end

# def new
#   @restaurant = Restaurant.new
# end

# def create
#   @restaurant = Restaurant.new(restaurant_params)
#   if @restaurant.save
#     redirect_to restaurant_path(@restaurant)
#   else
#     render :new, status: :unprocessable_entity
#   end
# end

# private

# def restaurant_params
#   params.require(:restaurant).permit(:name, :address, :category, :phone_number)
# end
