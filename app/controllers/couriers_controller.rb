class CouriersController < ApplicationController
  def index
    @couriers = Courier.all
  end

  def show
    @courier = Courier.find(params[:id])
  end

  def new
    @courier = Courier.new
  end

  def create
    @courier = Courier.new(courier_params)
    if @courier.save
      flash[:success] = "Courier added!"
      redirect_to @courier
    else
      render 'new'
    end
  end

  def edit
    @courier = Courier.find(params[:id])
  end

  def update
    @courier = Courier.find(params[:id])
    if @courier.update(courier_params)
      flash[:success] = "Profile updated"
      redirect_to @courier
    else
      render 'edit'
    end
  end

  private

  def courier_params
    params.require(:courier).permit(:name, :email)
  end
end
