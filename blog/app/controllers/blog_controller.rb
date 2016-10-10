class BlogController < ApplicationController
  def index
    @articles = Article.all.shuffle
  end
  
  def article
  	@article = Article.find(params[:id])
  end
end
