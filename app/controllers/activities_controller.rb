class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end
  
  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      # flash[:success] = "Activty added successfully!"
      redirect_to activities_url
    else
      render 'new'
    end
  end
  
  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
       redirect_to activities_url
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  
  def index
    @activities = Activity.all
  end
  
  def destroy
    Activity.find(params[:id]).destroy
    flash[:success] = "Activity deleted."
    redirect_to activities_path
  end
  
  
  private
    def activity_params
      params.required(:activity).permit(:name, :start_date, :end_date, :description,
       :goal, :notes)
    end
  
end
