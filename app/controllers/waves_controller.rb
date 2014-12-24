class WavesController < ApplicationController
  def index
    @wave = Wave.all
  end

  def show
    @wave = Wave.find(params[:id])
  end

  def edit
    @wave = Wave.find(params[:id])
  end

  def update
    @wave = Wave.find(params[:id])

    if @wave.update(wave_params)
      redirect_to @user
    else
      render :new
    end
  end

  def create
    @wave = User.new(wave_params)
 
    if @wave.update(wave_params)
      redirect_to @wave
      # binding.pry
    else
      render :new
    end
  end

  def new
    @wave = Wave.new
  end
  

private

  def wave_params
    params.require(:wave).permit(:date, :city, :state, :permission_to_share, ploy_ids: [], 
      user_ids: [])
  end

end