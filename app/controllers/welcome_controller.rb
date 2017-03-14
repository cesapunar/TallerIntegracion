class WelcomeController < ApplicationController
  def index
  	@articles = Article.all.sort_by(&:created_at).reverse.first(10)
  end


end
