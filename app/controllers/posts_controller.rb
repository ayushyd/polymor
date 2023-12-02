class PostsController < ApplicationController

	def index
		@posts = Post.all
	end


	def show
		@post = Post.find(params[:id])
		@commentable_type = "Post"
		@commentable_id = @post.id
		@comment = PolyComment.new
	end
end
