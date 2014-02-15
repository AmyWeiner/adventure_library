class PagesController < ApplicationController
  def index
  end

  def show
    @page = Page.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @page }
    end
  end
end
