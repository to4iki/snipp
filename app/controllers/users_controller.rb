class UsersController < ApplicationController
  # before_filter :require_user, :except => :index

  def index
    if signed_in?
      redirect_to('/snippets')
    end
  end

  private

  def require_user
    # @user = User.find_by_username!(params[:id])
  end
end
