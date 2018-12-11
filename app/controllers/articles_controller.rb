class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all #this is a meethod for the controller to call
  end

  def show
@article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    #fail #stops processing and shows you request parameters
    @article = Article.new(articles_params)
    #@article.title = params[:article][:title]
    flash.notice = "Article '#{@article.title}' Created!"
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
@article = Article.find(params[:id])
@article.destroy
flash.notice = "Article '#{@article.title}' Destroyed!"
redirect_to articles_path
  end

def edit
@article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update(articles_params)
  flash.notice = "Article '#{@article.title}' Updated!"
  redirect_to article_path(@article)
end
# params is a hash that contains the 'request parameters'
end
