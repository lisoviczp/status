class FavoritesController < ApplicationController

  def favorite_ploy
  	# binding.pry
    ploy = Ploy.find(params[:ploy_id])
    user = User.find(params[:id])
    user.favorite_ploys << ploy
    # redirect_to favorite_path(user.id)
    redirect_to root_path
  end



end
