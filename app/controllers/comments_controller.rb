class CommentsController < ApplicationController

  http_basic_authenticate_with :name => "syborg", :password => "cuions", :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy

	#@post = Post.find(params[:post_id])
    #@comment = @post.comments.find(params[:id])
    #@comment.destroy


    respond_to do |format|
      format.html { redirect_to post_path(@post), notice: "Comentari " + params[:id].to_s + " correctament esborrat"}
      format.json { head :ok }	 
  	end
  end
end
