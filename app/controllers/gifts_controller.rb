class GiftsController < ApplicationController
  #----------------------------------#
  # GiftGarden Gifts (Donations) Controller
  # original written by: Andy W, Oct 17 2016
  # major contributions by:
  #         Wei H, Oct 18 2016
  #----------------------------------#
  
  # define new gift object, also define maps to list donors/ids and activities/ids for select
  # boxes on New Gift screen
  def new
    @gift = Gift.new
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
  end

  # populates edit/update gift screens with db info, also define maps to list 
  # donors/ids and activities/ids for select boxes on Edit Gift screen
  def edit
    @gift = Gift.find(params[:id])
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
  end
  
  def import
    Gift.import(params[:file])
    redirect_to root_url, notice: "Gifts imported."
  end

  
  # create new gift using gift_params permitted below in private section
  # or renders form again with error messages
  # [map] code defines donors/ids and activities/ids for select boxes on New Gift screen
  def create
    @gift = Gift.new(gift_params)
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
    if @gift.save
      # flash[:success] = "Gift added successfully!"
      redirect_to gifts_url
    else
      render 'new'
    end
  end
  
  # update gift using gift_params permitted below in private section
  # or renders form again with error messages
  # [map] code defines donors/ids and activities/ids for select boxes on Edit Gift screen
  def update
    @gift = Gift.find(params[:id])
    if @gift.update(gift_params)
       redirect_to gifts_url
      # flash[:success] = "Gift updated successfully!"
    else
      render 'edit'
    end
  end
  
  #list all gifts on index page
  def index
    @gift = Gift.new
    @gifts = Gift.all
    @donors = Donor.all.map { |donor| [ "#{donor.first_name} #{donor.last_name}", donor.id ] }
    @activities = Activity.all.map { |activity| [ activity.name, activity.id ] }
  end
  
  #delete gift
  def destroy
    Gift.find(params[:id]).destroy
    flash[:success] = "Gift deleted."
    redirect_to gifts_path
  end
  
  def search
  end
  
  private
    #define permitted and required parameters for create and update methods
    def gift_params
      params.required(:gift).permit(:activity_id, :donor_id, :donation_date, :amount, :gift_type, :notes)
    end


end
