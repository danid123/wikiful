class WelcomeController < ApplicationController
  def index
  	@articles = Article.order(updated_at: :desc).limit(5)
  	@categories = Category.order("name")
  end

  def show
  	@articles = Category.find(params[:id]).articles.order(created_at: :desc)
  end
end
