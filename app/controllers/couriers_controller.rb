class CouriersController < ApplicationController

  def index
    @couriers = Courier.paginate(page: params[:page], per_page: 20)
  end

  def show
    @courier = Courier.find(params[:id])
    @package = Package.new
    @packages_in_work = correct_courier.packages.in_work.paginate(page: params[:page], per_page: 5)
    @packages_done = correct_courier.packages.done.all
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

  def destroy
    @courier = Courier.find(params[:id])
    @courier.destroy
    flash[:success] = "Task deleted"
    redirect_to root_path
  end

  private

  def courier_params
    params.require(:courier).permit(:name, :email)
  end

  def correct_courier
    @courier = Courier.find_by(id: params[:id])
  end
end
