class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy]

  def index
    @flats = Flat.all
    @flats_number = Flat.count
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
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
