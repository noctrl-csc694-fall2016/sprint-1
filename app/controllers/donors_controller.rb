class DonorsController < ApplicationController
  def new
  end

  def edit
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
