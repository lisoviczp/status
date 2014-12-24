class PloysController < ApplicationController
  def index
    @ploy = Ploy.all
  end

  def show
    @ploy = Ploy.find(params[:id])
  end

  def edit
    @ploy = Ploy.find(params[:id])
  end

  def update
    @ploy = Ploy.find(params[:id])
    @ploy.agrees = params[:agrees]
    binding.pry
    if @ploy.update(ploy_params)
      redirect_to @ploy
    else
      render :new
    end
  end

  def create
    @ploy = Ploy.new(ploy_params)
    @ploy.activity = params[:ploy][:activity]
    @ploy.place_type = params[:ploy][:place_type]
 
    if @ploy.update(ploy_params)
      redirect_to @ploy
      # binding.pry
    else
      render :new
    end
  end

  def new
    @ploy = Ploy.new
  end
  

private

  def ploy_params
    params.require(:ploy).permit(:date, :num_of_people, :desired_num_of_people, :mostly_or_all, 
      :desired_mostly_or_all, :min_age, :max_age, :city, :state, :zipcode, :activity, :place_type,
      :preferred_place, :user_id, :wave_id, :agrees)
  end

end
