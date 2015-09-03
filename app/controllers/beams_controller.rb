class BeamsController < ApplicationController
  before_action :find_beam, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show] 
  def index
    @beams = Beam.all.order("created_at DESC")
  end
  
  def show
    @comments = Comment.where(beam_id: @beam)
  end
  
  def new
    @beam = current_user.beams.build
  end
  
  def create
    @beam = current_user.beams.build(beam_params)
    
    if @beam.save
      redirect_to @beam
    else
      render 'new'
    end
  end
  
  def edit
    
  end
  
  def update
    if @beam.update(beam_params)
      redirect_to @beam
    else
      render 'edit'
    end
  end
  
  def destroy
    @beam.destroy
    redirect_to root_path
  end
  
  private
  
  def find_beam
       @beam = Beam.find(params[:id])
  end
  
  def beam_params
    params.require(:beam).permit(:title, :description, :image)
  end
end
