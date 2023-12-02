class PolyCommentsController < ApplicationController

	before_action :find_comment, only: [:show, :edit, :update, :destroy]


	def index
		@comments = PolyComment.all
	end

	def new
	end


	def create
		@comment = PolyComment.new(comment_params)
		if @comment.save
			redirect_to polycomments_path
	    else
	    
	       render :new, status: :unprocessable_entity
	    end   		
	end


	def edit
	end	


	def update
		if @comment.update(comment_params)
			redirect_to polycomments_path
	    else
	    
	       render :edit, status: :unprocessable_entity
	    end   		
	end


	private


	def find_comment
		@comment = PolyComment.find(params[:id])
	end

	def comment_params
		params.permit(:context, :commentable_type, :commentable_id)
	end
end
