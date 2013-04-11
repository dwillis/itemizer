class HomeController < ApplicationController

  def index
    @fec_filings = Filing.today
  end

  def show
    @filing_id = params[:id]
    @filing = Fech::Filing.new(@filing_id)
    @filing.download
    @itemizations = @filing.rows_like(/params[:sked]/)

    respond_to do |format|
      format.html
    end
  end
  
end
