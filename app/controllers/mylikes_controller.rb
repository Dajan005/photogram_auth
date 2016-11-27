class MylikesController < ApplicationController

  def show
    @likes = current_user.likes.order(created_at: :desc)

    render("mylikes/show.html.erb")

  end

end
