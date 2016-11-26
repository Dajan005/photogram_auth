class MylikesController < ApplicationController

  def show
    @user = User.find_by("id")
    @likes = Like.all
    @photos = Photo.all

  end

end
