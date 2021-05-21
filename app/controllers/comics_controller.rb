class ComicsController < ApplicationController
  before_action :set_comic, only: [:show, :edit, :update, :destroy]

  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    if @comic.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def update
    if @comic.update(comic_params)
      redirect_to comic_path
    else
      render :edit
    end
  end

  def edit
  end

  private
  def comic_params
    params.require(:comic).permit(:image, :name, :genre_id, :magazine_id, :author, :number, :end).merge(user_id: current_user.id)
  end

  def set_comic
    @comic = Comic.find(params[:id])
  end

end
