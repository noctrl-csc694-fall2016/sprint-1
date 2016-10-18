class GiftsController < ApplicationController
  
  def new
    @gift = Gift.new
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
  end

  def edit
    @gift = Gift.find(params[:id])
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
  end
  
  def import
    Gift.import(params[:file])
    redirect_to root_url, notice: "Gifts imported."
  end
end
  def create
    @gift = Gift.new(gift_params)
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
    if @gift.save
      # flash[:success] = "Activty added successfully!"
      redirect_to gifts_url
    else
      render 'new'
    end
  end
  
  def update
    @gift = Gift.find(params[:id])
    if @gift.update(gift_params)
       redirect_to gifts_url
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  
  def index
    @gifts = Gift.all
  end
  
  def destroy
    Gift.find(params[:id]).destroy
    flash[:success] = "Gift deleted."
    redirect_to gifts_path
  end
  
  private
    def gift_params
      params.required(:gift).permit(:activity_id, :donor_id, :donation_date, :amount, :gift_type, :notes)
    end
  

