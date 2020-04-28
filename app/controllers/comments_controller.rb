class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to gossips_path
  end

  def index
    @comment = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment = Comment.update(comment_params)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comment_path
  end



  private
=begin
      def set_comment
          @comment = Comment.find(params[:id])
      end
=end
      def comment_params
          params.require(:comment).permit(:content, :user_id, :gossip_id)
      end
end
