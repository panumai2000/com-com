class ComicsController < ApplicationController
  def index
  end

  def new
    @comics = comic.new
  end
end
