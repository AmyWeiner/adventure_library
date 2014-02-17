class AdventuresController < ApplicationController

  def index 
    @libraries = Library.all
    @adventures = Adventure.all
    respond_to do |format|
      format.html 
      format.json { render json: @adventures }
    end
  end

  def show
    @adventure = Adventure.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @adventure }
    end
  end

  def new
    @adventure = Adventure.new
  end

  def create
    new_adventure = params.require(:adventure).permit(:title, :author, :pages_attributes => [:name, :text])
    @adventure = Adventure.new(new_adventure)
    if @adventure.save
      redirect_to @adventure
    else
      render :new
    end
  end

  def edit
    @adventure = Adventure.find(params[:id])
  end

end

