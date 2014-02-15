class PagesController < ApplicationController
  def index
    @adventure = Adventure.find(params[:adventure_id])
    @pages = @adventure.pages
    respond_to do |format|
      format.html 
      format.json { render json: @pages }
    end
  end

  def show
    @adventure = Adventure.find(params[:adventure_id])
    @page = @adventure.pages.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @page }
    end
  end

  def new
    @adventure = Adventure.find(params[:adventure_id])
    @page = @adventure.pages.new
  end

  def create
    new_page = params.require(:page).permit(:name, :text)
    adventure = Adventure.find(params[:adventure_id])
    page = adventure.pages.create(new_page)
    redirect_to adventure_page_path(adventure, page)  
  end

  def edit
    @adventure = Adventure.find(params[:adventure_id])
    @page = @dventure.pages.find(params[:id])
  end

  def update
    updated_page = params.require(:page).permit(:name, :text)
    adventure = Adventure.find(params[:adventure_id])
    page = adventure.pages.find(params[:id])
    page.update_attributes(updated_page)
    redirect_to adventure_page_path(adventure, page) 
  end

  def destroy
  end

end
