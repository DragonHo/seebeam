class CommentsController < ApplicationController
  before_action :authenticate_user! 
  def create
    @beam = Beam.find(params[:beam_id])
    @comment = Comment.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.beam_id = @beam.id
    
    if @comment.save
      redirect_to beam_path(@beam)
    else
      render 'new'
    end
  end
end
