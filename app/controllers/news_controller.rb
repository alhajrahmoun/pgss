class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect news_path
    else
      render 'new'
    end
  end

  private
  def news_params
    params.require(:news).permit(:title, :description, :image)
  end
end
