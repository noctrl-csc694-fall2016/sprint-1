class GiftsController < ApplicationController
  def new
  end

  def edit
  end
  
  def import
    Gift.import(params[:file])
    redirect_to root_url, notice: "Gifts imported."
  end
end
