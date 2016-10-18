class DonorsController < ApplicationController
  def new
    @donor = Donor.new
  end

  def edit
    @donor = Donor.find(params[:id])
  end
  
  def create
    @donor = Donor.new(donor_params)
    if @donor.save
      # flash[:success] = "Activty added successfully!"
      redirect_to donors_url
    else
      render 'new'
    end
  end
  
  def update
    @donor = Donor.find(params[:id])
    if @donor.update(donor_params)
       redirect_to donors_url
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  
  def index
    @donors = Donor.all
  end
  
  def destroy
    Donor.find(params[:id]).destroy
    flash[:success] = "Donor deleted."
    redirect_to donors_path
  end
  
  private
    def donor_params
      params.required(:donor).permit(:name, :address, :address2, :city,
       :state, :zip, :phone, :email, :notes)
    end
end
