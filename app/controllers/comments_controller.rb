class CommentsController < ApplicationController
	def create
		@post.find(params[:post_id])
		@comment = post.comments.create(params[:comment].permit(:name, :body))
		
		redirect_to post_path(@post)
	end



end
