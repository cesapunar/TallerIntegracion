class ArticlesController < ApplicationController

	def index
		@articles =	Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comments = Comment.where("article_id LIKE ?", params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(title: params[:article][:title],
								down: params[:article][:down],
								body: params[:article][:body],
								 comments_count: 0)
		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to admin_path
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end

	private

	def article_params
		params.require(:article).permit(:title, :down,:body)
	end
end