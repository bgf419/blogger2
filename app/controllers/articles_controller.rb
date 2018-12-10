class ArticlesController < ApplicationController
  def index
    @articles = Article.all #this is a meethod for the controller to call
  end

  def show
@article = Article.find(params[:id])
  end
# params is a hash that contains the 'request parameters'
end
