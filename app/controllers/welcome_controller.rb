class WelcomeController < ApplicationController
  def index
  	@articles = Article.all.sort_by(&:created_at).reverse
  end


end
