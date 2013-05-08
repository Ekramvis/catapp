class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(params[:cat])
    @cat.save!

    redirect_to cat_path(@cat)
  end

  def destroy
    @cat = Cat.find(params[:id]).destroy

    redirect_to cats_path
  end

end