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
  def import
    Donor.import(params[:file])
    redirect_to root_url, notice: "Donors imported."
  end
  
  def index
    @donors = Donor.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@donors)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
  end
  end
  
  def destroy
    Donor.find(params[:id]).destroy
    flash[:success] = "Donor deleted."
    redirect_to donors_path
  end
  
  private
    def donor_params
      params.required(:donor).permit(:first_name, :last_name, :address, :address2, :city,
       :state, :zip, :phone, :email, :notes)
    end
end
