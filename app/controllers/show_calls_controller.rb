class ShowCallsController < ApplicationController
  def index
  	@show_calls = ShowCall.order(:uuid)
  	respond_to do |format|
  		format.html
  		format.csv { send_data @show_calls.to_csv }
  	end
  end

  def show
    @show_call = ShowCall.find(params[:id])
  end

  def destroy
    @show_call = ShowCall.find(params[:id])
    @show_call.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def import
  	ShowCall.import(params[:file])
  	redirect_to root_url, notice: "Show Calls imported."
  end
end
