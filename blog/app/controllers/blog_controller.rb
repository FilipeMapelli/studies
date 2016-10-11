class BlogController < ApplicationController
  def index
    @articles = Article.all.shuffle
  end
  
  def article
  	@article = Article.find(params[:id])
  end
  
  def category
  	@articles = Article.where(category: params[:c]).all
  end
end
