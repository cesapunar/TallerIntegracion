class CommentsController < ApplicationController

	def create

		@comment = Comment.new(comment_params)
		if @comment.save
			article = Article.find(params[:comment][:article_id])			
			article.update(comments_count: article.comments_count + 1)
		end
		redirect_to article_path(id:params[:comment][:article_id])
	end

	def comment_params
		params.require(:comment).permit(:name, :body, :article_id)
	end


end