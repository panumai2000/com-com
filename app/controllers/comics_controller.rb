class ComicsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_comic, only: [:show, :edit, :update, :destroy]
  before_action :search_comic, only: [:index, :search]

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

  def search
    @results = @p.result  # 検索条件にマッチした商品の情報を取得
  end

  private
  def comic_params
    params.require(:comic).permit(:image, :name, :genre_id, :magazine_id, :author, :number, :end).merge(user_id: current_user.id)
  end

  def search_comic
    @p = Comic.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_comic
    @comic = Comic.find(params[:id])
  end

end
