class BlogController < ApplicationController
  def index
    @articles= [
      {title: 'título', author: 'autor', category: 'categoria'},
      {title: 'título', author: 'autor', category: 'categoria'},
      {title: 'título', author: 'autor', category: 'categoria'},
      {title: 'título', author: 'autor', category: 'categoria'}
      ].shuffle
  end
end
