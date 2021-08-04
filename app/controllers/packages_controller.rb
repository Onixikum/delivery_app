class PackagesController < ApplicationController

  def create
    @package = correct_courier.packages.new(package_params)
    if @package.save
      flash[:success] = "Package added!"
      redirect_to @courier
    else
      render 'new'
    end
  end

  def status_complite
    @package = Package.find_by(id: params[:package_id])
    @package.update_attribute(:delivery_status, true)
    flash[:success] = "Status updated"
    redirect_to root_path
  end

  private

  def package_params
    params.require(:package).permit(:tracking_number, :courier_id)
  end

  def correct_courier
    @courier = Courier.find_by(id: params[:courier_id])
  end
end
