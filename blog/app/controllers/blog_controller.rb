class BlogController < ApplicationController
  def index
    @articles= Article.all.shuffle
  end
end
