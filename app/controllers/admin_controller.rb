class AdminController < ApplicationController
  def home
  	@articles = Article.all.sort_by(&:created_at).reverse
  end
end
